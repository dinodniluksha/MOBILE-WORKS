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

   /*private getData(res: Response){
    let body = res.json();
    
    return body || {};
   }*/

  private(){
    let headers = new Headers();
    this.createAuthorizationHeader(headers);
    return this.http.get(this.baseUrl+'user', { headers: headers }).map(res => res.json())
  }

  signup(dato){
    return this.http.post(this.baseUrl+"register", dato)
    .map(this.extractData);
  }

 /* signup(data){
    return this.http.post(this.baseUrl+'register', data)
    .map(res => res.json());
  } */

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

  searchB(data)
	{
    console.log(data.location);
    console.log(data['location']);
    let param: any = {'location': data.location,
                      'sfrom': data.sfrom,
                      'sto': data.sto};
		return this.http.get(this.baseUrl+'filter_b/',{params: param})
		.map(res => res.json());
  }
  
  searchM(data)
	{
    console.log(data.location);
    console.log(data['location']);
    let param: any = {'location': data.location,
                      'sfrom': data.sfrom,
                      'sto': data.sto};
		return this.http.get(this.baseUrl+'filter_m/',{params: param})
		.map(res => res.json());
  }

  searchA(data)
	{
    console.log(data.location);
    console.log(data['location']);
    let param: any = {'location': data.location,
                      'sfrom': data.sfrom,
                      'sto': data.sto};
		return this.http.get(this.baseUrl+'filter_a/',{params: param})
		.map(res => res.json());
  }

  searchR(data)
	{
    console.log(data.location);
    console.log(data['location']);
    let param: any = {'location': data.location,
                      'sfrom': data.sfrom,
                      'sto': data.sto};
		return this.http.get(this.baseUrl+'filter_r/',{params: param})
		.map(res => res.json());
  }

  searchH(data)
	{
    console.log(data.location);
    console.log(data['location']);
    let param: any = {'location': data.location,
                      'sfrom': data.sfrom,
                      'sto': data.sto};
		return this.http.get(this.baseUrl+'filter_h/',{params: param})
		.map(res => res.json());
  }

  AparBook(data)
	{
    console.log(data);
		let headers = new Headers();
    this.createAuthorizationHeader(headers);

    headers.append('Accept', 'application/json');
    
		return this.http.post(this.baseUrl+'reservations_a', data, {headers: headers}).map(res => res.json());
		
	}

}
