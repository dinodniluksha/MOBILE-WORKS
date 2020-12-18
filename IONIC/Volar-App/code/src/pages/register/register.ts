import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController} from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';
import {LoginPage } from '../login/login';

/**
 * Generated class for the RegisterPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-register',
  templateUrl: 'register.html',
})
export class RegisterPage {

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              private auth: AuthProvider,
              public alertCrtl: AlertController 
              ) {  }

              signup(FormReg){
                this.auth.signup(FormReg.value).subscribe(data =>{
                  if( data.token == 0){
                    //FormReg.name = '';
                    FormReg.email = '';
                    //FormReg.password = '';
                    //FormReg.confirm_password = '';
                    let alert = this.alertCrtl.create({
                      title: 'Signup Failed',
                      subTitle: data.message.email,
                      buttons: ['OK']
                    });
                    alert.present();
                  }
            
                  else if(data.token != 0)
                  {
                    let alert = this.alertCrtl.create({
                      title: 'Signup Succesfully',
                      subTitle: data.message,
                      buttons: ['Login Now']
                    });
                    alert.present();
          
                    this.navCtrl.setRoot(LoginPage);
                  }
                })
                console.log(FormReg);
              }

  ionViewDidLoad() {
    console.log('ionViewDidLoad RegisterPage');
  }
  goToWelcomePage(){
    this.navCtrl.pop();
  }
  register(){
    this.navCtrl.pop();
  }
}
