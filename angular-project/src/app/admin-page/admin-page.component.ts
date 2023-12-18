import { Component, OnInit } from '@angular/core';
import { LoginService } from '../service/login/login.service';
import { ToastrService } from 'ngx-toastr';
import { UserListComponent } from '../lists/user-list/user-list.component';
import { UserDetailsDTO } from '../dtos/user-details-dto';
import { ChatService } from '../service/chat/chat.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-admin-page',
  templateUrl: './admin-page.component.html',
  styleUrls: ['./admin-page.component.css']
})
export class AdminPageComponent {

  // currentUser: UserDetailsDTO | null;
  userId:string;

  // constructor(private login: LoginService) {
    
  // }

  // ngOnInit(): void {
   
  // }

  constructor(private login: LoginService) { }

 

  
  getUserId(): void {
    const auth = sessionStorage.getItem(`token`);

    const user = this.login.interpretToken(auth);
    const userId = user.username;
    this.userId = userId;
  }


  logout(): void {
    this.login.logout();
    
  }

}




