import { Component, OnDestroy, OnInit } from '@angular/core';
import { LoginService } from '../service/login/login.service';
import { ChatService } from '../service/chat/chat.service';
import { Subject, Subscription, debounceTime } from 'rxjs';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit, OnDestroy {
  messageInput = '';
  userId: string = '';
  connectedUsersArray: string[] = [];
  private subscription: Subscription;
  selectedUser;
  //userMessages: { [user: string]: { sender: string, content: string }[] } = {};
  userMessages: { [user: string]: { sender: string, content: string, seen: boolean }[] } = {};
  private debounceInput = new Subject<void>();
  constructor(private loginService: LoginService, private chatService: ChatService, private toastr: ToastrService) {}

  ngOnDestroy(): void {
    if (this.subscription) {
      this.subscription.unsubscribe();
    }
    this.chatService.disconnectWebSocket(this.userId);
    location.reload();
  }

  ngOnInit(): void {
    this.getUserId();

    if (this.userId) {
        this.chatService.connectToWebSocket(this.userId);
        this.chatService.getConnectedUsers();
        this.subscription = this.chatService.receiveUsers().subscribe((message) => {
            this.connectedUsersArray = JSON.parse(message);
            this.connectedUsersArray = this.connectedUsersArray.filter(user => user !== this.userId);
        });

        this.subscription.add(
            this.chatService.receiveMessage(this.userId).subscribe((message) => {
                const parsedMessage = JSON.parse(message);
                console.log(parsedMessage);

                this.showToaster('info', `New message from ${parsedMessage.sender}`);

                if (!this.userMessages[parsedMessage.sender]) {
                    this.userMessages[parsedMessage.sender] = [];
                }
                this.userMessages[parsedMessage.sender].push({
                  sender: parsedMessage.sender,
                  content: parsedMessage.content,
                  seen: false,
                });
            })
        );

      
  
      this.subscription.add(
          this.chatService.receiveNotification(this.userId).pipe(debounceTime(500)).subscribe((message) => {
              const parsedMessage = JSON.parse(message);
              console.log(parsedMessage);
    
              this.showToaster('info', `User ${parsedMessage.sender} is typing`);
          })
      );

      this.subscription.add(
        this.chatService.receiveSeenNotification(this.userId,this.userMessages).pipe(debounceTime(500)).subscribe((message) => {
          const parsedMessage = JSON.parse(message);
          console.log(parsedMessage);
          
          this.showToaster('info', `User ${parsedMessage.sender} has seen your message`);
        })
        );

     
      
  
    }
}

  getUserId(): void {
    const auth = sessionStorage.getItem(`token`);

    const user = this.loginService.interpretToken(auth);
    const userId = user.username;
    this.userId = userId;
  }

  sendMessage(message: string, selectedUser: string): void {
    if (message.trim() !== '') {
      
      if (!this.userMessages[selectedUser]) {
        this.userMessages[selectedUser] = [];
      }
      this.userMessages[selectedUser].push({
        sender: this.userId,
        content: message,
        seen:false
      });

     
      this.chatService.sendMessage(message, selectedUser, this.userId);

      this.messageInput = '';
    }
  }

  openChat(user: string): void {
    this.selectedUser = user;
    
    if (!this.userMessages[user]) {
      this.userMessages[user] = [];
    }

    console.log('Opening chat with user:', user);
  }


  onInputFocus(selectedUser: string) {
    if (this.selectedUser && this.userMessages[this.selectedUser]?.length > 0) {
      const lastMessage = this.userMessages[this.selectedUser][this.userMessages[this.selectedUser].length - 1];
      if (lastMessage && !lastMessage.seen) {
        console.log("seen");
        this.chatService.sendSeenNotification("seen", selectedUser, this.userId,this.userMessages);
      }
    }
  }

  onMessageChange(): void {
    console.log('User is typing');
    if (this.messageInput.trim() !== '') {
        this.debounceInput.next();
    }
    this.subscription.add(
      this.debounceInput.pipe(debounceTime(500)).subscribe(() => {
          console.log('User has stopped typing...');
          this.chatService.sendNotification('User is typing...', this.selectedUser, this.userId);
      })
  );
}


  showToaster(messageType: string, message: string) {
    switch (messageType) {
      case 'success':
        this.toastr.success(message);
        break;
      case 'info':
        this.toastr.info(message);
        break;
      case 'warning':
        this.toastr.warning(message);
        break;
      case 'error':
        this.toastr.error(message);
        break;
      default:
        this.toastr.info(message);
        break;
    }
  }
}
