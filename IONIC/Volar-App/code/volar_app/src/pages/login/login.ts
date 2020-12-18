import { Component } from '@angular/core';
import { NavController, NavParams, AlertController } from 'ionic-angular';
import { RegisterPage } from '../register/register';
import { HomePage } from '../home/home';
import { AuthProvider } from '../../providers/auth/auth';

//import { HTTP } from '@ionic-native/http';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {
  // data={
  //     "username":"",
  //     "passowrd":""
  // };
  // returnData;
  // constructor(private http: HTTP,public navCtrl: NavController, public navParams: NavParams) {
  //}
  constructor(
    public navCtrl: NavController, public navParams: NavParams,
    private auth: AuthProvider,
    public alertCrtl: AlertController
    ) {}

    login(FormLogin){
      this.auth.login(FormLogin.value).subscribe(data =>{
        if( data.token == 0){
          FormLogin.email = '';
          FormLogin.password = '';
          let alert = this.alertCrtl.create({
            title: 'Login Failed',
            subTitle: data.message,
            buttons: ['OK']
          });
          alert.present();
        }
  
        else if(data.token != 0)
        {
          this.navCtrl.setRoot(HomePage);
        }
      })
    }
  

  ionViewDidLoad() {
    console.log('ionViewDidLoad LoginPage');
  }
  goToWelcomePage(){
    this.navCtrl.pop();
  }
  Register(){
    this.navCtrl.push(RegisterPage);
  }
  

  
}
