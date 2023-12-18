import { Component, OnDestroy, OnInit } from '@angular/core';
import { LoginService } from '../service/login/login.service';
import { ActivatedRoute, NavigationEnd, Router } from '@angular/router';
import { takeUntil } from 'rxjs/operators';
import { Subject } from 'rxjs';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnDestroy,OnInit {

  isAdmin: boolean = false;
  isUser: boolean = false;
  private ngUnsubscribe = new Subject<void>();

  constructor(private login: LoginService, private router: Router, private activatedRoute: ActivatedRoute) {
   
  }
  ngOnInit(): void {
    const auth=sessionStorage.getItem("token");
    const user=this.login.interpretToken(auth);
    if(user.userRole.includes("ADMIN")){
      this.isAdmin=true;
      
    }
  }



  ngOnDestroy(): void {
    this.ngUnsubscribe.next();
    this.ngUnsubscribe.complete();
  }

 
  
}
