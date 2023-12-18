package ro.tuc.ds2020.controllers;


import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import ro.tuc.ds2020.dtos.WebSocketMessage;


import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

@Controller
@CrossOrigin("http://localhost:4200")
public class WebSocketController {
    private final SimpMessagingTemplate messagingTemplate;

    private final Map<String, String> userSessions;

    public WebSocketController(SimpMessagingTemplate messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
        this.userSessions= new ConcurrentHashMap<String, String>();
    }

    @MessageMapping("/connect/{userId}")
    @SendToUser("/queue/connect")
    public String connect(@PathVariable String userId, SimpMessageHeaderAccessor headerAccessor) {

        userSessions.put(userId, headerAccessor.getSessionId());
        System.out.println(userSessions);
        return "Connected!";
    }

    @MessageMapping("/disconnect/{userId}")
    @SendToUser("/queue/disconnect")
    public String disconnect(@PathVariable String userId, SimpMessageHeaderAccessor headerAccessor) {
        System.out.println("disc"+headerAccessor.getSessionId());
        userSessions.remove(userId);
        return "Disconnected!";
    }

    @MessageMapping("/getConnectedUsers")
    public List<String> getConnectedUsers() {
        System.out.println(userSessions.size());
        List<String> connectedUsers = new ArrayList<>(userSessions.keySet());
        messagingTemplate.convertAndSend("/topic/check2", connectedUsers);

        return connectedUsers;
    }

    @MessageMapping("/chat/{userId}")
    @SendTo("/topic/messages/{userId}")
    public WebSocketMessage handleMessage(@Payload WebSocketMessage message, @DestinationVariable("userId") String userId) {
        System.out.println("DE LA MINE:"+" "+message.getSender() + " MESAJ: " + message.getContent() + " PENTRU TINE: " + message.getReceiver());
        messagingTemplate.convertAndSend("/topic/check2/"+message.getReceiver(), message);
        return message;

    }


    @MessageMapping("/notification/{userId}")
    @SendTo("/topic/notification/{userId}")
    public WebSocketMessage handleNotification(@Payload WebSocketMessage message, @DestinationVariable("userId") String userId) {
        System.out.println("DE LA MINE:"+" "+message.getSender() + " MESAJ: " + message.getContent() + " PENTRU TINE: " + message.getReceiver());
        messagingTemplate.convertAndSend("/topic/notification/"+message.getReceiver(), message);

        if(message.getContent().equals("seen")){
            System.out.println(message.getContent());
            messagingTemplate.convertAndSend("/topic/seen/"+message.getReceiver(), message);
        }
        return message;

    }

    @MessageMapping("/seen/{userId}")
    @SendTo("/topic/seen/{userId}")
    public WebSocketMessage handleSeen(@Payload WebSocketMessage message, @DestinationVariable("userId") String userId) {
        System.out.println("seen");
        messagingTemplate.convertAndSend("/topic/seen/"+message.getReceiver(), message);

        return message;

    }








}
