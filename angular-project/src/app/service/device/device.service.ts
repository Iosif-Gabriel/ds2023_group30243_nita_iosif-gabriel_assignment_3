import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { DeviceDTO } from 'src/app/dtos/device-dto';
import { Observable } from 'rxjs';
import { UserDetailsDTO } from 'src/app/dtos/user-details-dto';
import { LoginService } from '../login/login.service';


@Injectable({
  providedIn: 'root'
})
export class DeviceService {
  private getDevicesURL="http://localhost:8081/device/getAllDevices";
  private createDeviceURL="http://localhost:8081/device/createDevice"
  private devices: DeviceDTO[] = [];
  currentUser: UserDetailsDTO | null;
  constructor(private httpClient: HttpClient,private login: LoginService) { }



  private getJwtToken(): string | null {
   
    return sessionStorage.getItem(`token`);
  }

  private getHeaders(): HttpHeaders {
    const token = this.getJwtToken();
    if (token) {
      return new HttpHeaders({
        Authorization: `Bearer ${token}`
      });
    } else {
     
      return new HttpHeaders();
    }
  }

  
  getDeviceList(): Observable<DeviceDTO[]> {
    
    const headers = this.getHeaders();
  
    return this.httpClient.get<DeviceDTO[]>(this.getDevicesURL, { headers });
  }

  createDevice(deviceDTO:DeviceDTO):Observable<any>{
    console.log(deviceDTO);
    const headers = this.getHeaders();
    return this.httpClient.post(this.createDeviceURL, deviceDTO, { headers });;
  }
  

  deleteDevice(deviceId:String):Observable<any>{
    const deleteDeviceURL=`http://localhost:8081/device/delete/${deviceId}`;
    const headers = this.getHeaders();
    return this.httpClient.delete(deleteDeviceURL, { headers });
  }

  updateDevice(deviceId:String,deviceDTO:DeviceDTO):Observable<any>{
   
    const updateDeviceURL=`http://localhost:8081/device/update/${deviceId}`;
    const headers = this.getHeaders();
    return this.httpClient.put(updateDeviceURL,deviceDTO, { headers });
  }

  getUserDevices(userID:String):Observable<DeviceDTO[]>{
    const usersDeviceURL=`http://localhost:8081/device/getUserDevices/${userID}`;
    const headers = this.getHeaders();
    return this.httpClient.get<DeviceDTO[]>(usersDeviceURL, { headers });
  }

  getDevices(): DeviceDTO[] {
    return this.devices;
  }

  setDevices(devices: DeviceDTO[]): void {
    this.devices = devices;
  }
}
