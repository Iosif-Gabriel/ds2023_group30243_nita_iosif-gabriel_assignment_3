import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { EnergyDTO } from 'src/app/dtos/energy-dto';
import { HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class EnergyService {

  constructor(private httpClient: HttpClient) { }

  
  private getJwtToken(): string | null {
  
    return sessionStorage.getItem('token');
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

  
  getConsumptionByDeviceId(deviceId:String):Observable<EnergyDTO[]>{
    const getDeviceConsumptionById=`http://localhost:8082/energy/getConsumptionByDeviceId/${deviceId}`;

    const headers = this.getHeaders();
    return this.httpClient.get<EnergyDTO[]>(getDeviceConsumptionById,{headers});
  }

}
