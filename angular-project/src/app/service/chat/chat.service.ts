import { Injectable, OnDestroy, OnInit } from '@angular/core';
import { StompConfig, StompService } from '@stomp/ng2-stompjs';
import { LoginService } from '../login/login.service';
import { BehaviorSubject, Observable, map } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ChatService  {

  private stompConfig: StompConfig;
  private stompService: StompService;
 
  constructor() {
    this.stompConfig = {
      url: 'ws://localhost:8020/chat',
      headers: {},
      heartbeat_in: 0,
      heartbeat_out: 20000,
      reconnect_delay: 2000,
      debug: true,
    };

    this.stompService = new StompService(this.stompConfig);
   
  }
  
  connectToWebSocket(userId: string): void {
   
    const destination = `/app/connect/${userId}`;
    this.stompService.publish({ destination ,body: userId });
  }

  disconnectWebSocket(userId: string): void {
   
    const destination = `/app/disconnect/${userId}`;
    this.stompService.publish({ destination ,body: userId});
    this.closeConnection();
  }

  closeConnection(): void {
    if (this.stompService && this.stompService.connected()) {
      this.stompService.disconnect();
      this.stompService = new StompService(this.stompConfig); 
    }
  }

  getConnectedUsers():void{
    const dest=`/app/getConnectedUsers`;
    this.stompService.publish(dest)
  }


  receiveUsers(): Observable<any> {
  
    return new Observable<any>((observer) => {
      this.stompService.subscribe(`/topic/check2`).subscribe((message) => {
        observer.next(message.body);
      });
    });
  }

  sendMessage(message: string,receiverId: string,senderId: string,): void {
  
    if (this.stompService && this.stompService.connected()) {
        const payload = { sender: senderId, content: message,receiver: receiverId };
        const destination = `/app/chat/${receiverId}`;
        this.stompService.publish({ destination, body: JSON.stringify(payload) });
    } else {
        console.error('WebSocket is not connected. Reconnecting...');
    }
  }


  
  sendNotification(message: string,receiverId: string,senderId: string,): void {
  
    if (this.stompService && this.stompService.connected()) {
        const payload = { sender: senderId, content: message,receiver: receiverId };
        const destination = `/app/notification/${receiverId}`;
        this.stompService.publish({ destination, body: JSON.stringify(payload) });
    } else {
        console.error('WebSocket is not connected. Reconnecting...');
    }
  }


  sendSeenNotification(message: string, receiverId: string, senderId: string,userMessages): void {
    if (this.stompService && this.stompService.connected()) {
      const payload = { sender: senderId, content: message, receiver: receiverId };
      const destination = `/app/seen/${receiverId}`;
      this.stompService.publish({ destination, body: JSON.stringify(payload) });
  
     
      if (userMessages[receiverId]) {
        const lastMessage = userMessages[receiverId][userMessages[receiverId].length - 1];
        if (lastMessage) {
          lastMessage.seen = true;
        }
      }
    } else {
      console.error('WebSocket is not connected. Reconnecting...');
    }
  }


  receiveNotification(receiverId:string): Observable<any> {
  
    return new Observable<any>((observer) => {
      this.stompService.subscribe(`/topic/notification/${receiverId}`).subscribe((message) => {
        observer.next(message.body);
      });
    });
  }



  receiveSeenNotification(receiverId: string,userMessages): Observable<any> {
    return new Observable<any>((observer) => {
      this.stompService.subscribe(`/topic/seen/${receiverId}`).subscribe((message) => {
        observer.next(message.body);
  
        if (userMessages[receiverId]) {
          const lastMessage = userMessages[receiverId][userMessages[receiverId].length - 1];
          if (lastMessage) {
            lastMessage.seen = true;
          }
        }
      });
    });
  }
  
  receiveMessage(receiverId:string): Observable<any> {
  
    return new Observable<any>((observer) => {
      this.stompService.subscribe(`/topic/check2/${receiverId}`).subscribe((message) => {
        observer.next(message.body);
      });
    });
  }






  





}
