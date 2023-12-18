import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { LoginService } from '../service/login/login.service';
import { UserDetailsDTO } from '../dtos/user-details-dto';

@Injectable({
  providedIn: 'root'
})
export class AdminGuard implements CanActivate {
  constructor(private loginService: LoginService, private router: Router) {}
  currentUser: UserDetailsDTO | null;
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean | UrlTree {
  
    const auth=sessionStorage.getItem(`token`);
    const user = this.loginService.interpretToken(auth);
    
   
    if (auth) {
      if (user.userRole === 'ADMIN' && state.url.startsWith('/user')) {
        return this.router.parseUrl('/login');
      } else if (user.userRole === 'USER' && state.url.startsWith('/admin')) {
        return this.router.parseUrl('/login'); 
      }else 
      return true;
    } else {
      return this.router.parseUrl('/login');
    }
  }


}
