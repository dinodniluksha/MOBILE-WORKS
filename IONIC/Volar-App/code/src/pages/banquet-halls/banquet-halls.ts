import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';
/**
 * Generated class for the BanquetHallsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-banquet-halls',
  templateUrl: 'banquet-halls.html',
})
export class BanquetHallsPage {
  
  data_ps : Array<{}>;

  constructor(public navCtrl: NavController, public navParams: NavParams, private auth: AuthProvider) 
  {

    this.auth.pro_data().subscribe(data => {
      this.data_ps = data.data;
     });

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad BanquetHallsPage');
  }
  goToHomePage(){
    this.navCtrl.pop();
  }

}
