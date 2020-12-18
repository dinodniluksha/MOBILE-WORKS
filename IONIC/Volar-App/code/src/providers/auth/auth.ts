import { Injectable } from '@angular/core';
import {Http,Response, Headers} from '@angular/http';
import 'rxjs/add/operator/map';

/*
  Generated class for the AuthProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AuthProvider {

  baseUrl:string = 'http://localhost:8000/api/';

  constructor(public http: Http) {
    console.log('Hello AuthProvider Provider');
  }

  createAuthorizationHeader(headers: Headers){
    headers.append('Authorization', window.localStorage.getItem('bearer token'));
  }
  
  private extractData(res: Response){
    let body = res.json();
    if(body.token != 0 ){
      window.localStorage.setItem('token', body.token);
      window.localStorage.setItem('bearer token', 'Bearer '+body.token);
    };
    return body || {};
   }

  private(){
    let headers = new Headers();
    this.createAuthorizationHeader(headers);
    return this.http.get(this.baseUrl+'user', {
      headers: headers
    }).map(res => res.json());
  }

  signup(data){
    return this.http.post(this.baseUrl+"register", data)
    .map(this.extractData);
  }

  login(data){
    return this.http.post(this.baseUrl+"login", data)
    .map(this.extractData);
  }

  isLogged(){
    if(window.localStorage.getItem('token')){
      return true;
    }
    else{
      return false;

    }
  }

  logout(){
    window.localStorage.removeItem('token');
    return true
  }
  
  pro_data(){
    //let headers = new Headers();
    //this.createAuthorizationHeader(headers);
    return this.http.get(this.baseUrl+'all_products').map(res => res.json());
  }

}
