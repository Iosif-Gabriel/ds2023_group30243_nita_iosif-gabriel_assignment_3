import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { UserListComponent } from './lists/user-list/user-list.component';
import { DeviceListComponent } from './lists/device-list/device-list.component';
import { AdminGuard } from './guard/admin.guard';
import { AdminPageComponent } from './admin-page/admin-page.component';
import { UserPageComponent } from './user-page/user-page.component';
import { ChatComponent } from './chat/chat.component';


const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: '', redirectTo: 'login', pathMatch: 'full' },
  {
    path: 'admin-page',
   // canActivate: [AdminGuard],
    children: [
      { path: '', component: AdminPageComponent },
      { path: 'users', component: UserListComponent },
      { path: 'devices', component: DeviceListComponent },
      { path: 'admin-chat', component: ChatComponent },
    ]
  },
  {
    path: 'user-page',
   // canActivate: [AdminGuard],
    children: [
      { path: '', component: UserPageComponent },
      { path: 'user-chat', component: ChatComponent },
    ]
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
