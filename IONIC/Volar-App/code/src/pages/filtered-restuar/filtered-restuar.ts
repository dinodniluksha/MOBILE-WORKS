import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';


import { HomePage } from '../home/home';
import { RestuarReserDetailPage } from '../restuar-reser-detail/restuar-reser-detail';
/**
 * Generated class for the FilteredRestuarPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-filtered-restuar',
  templateUrl: 'filtered-restuar.html',
})
export class FilteredRestuarPage {

  data_ps : Array<{}>;
  data_b : any;

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private auth: AuthProvider
             ) 
                {
                  this.data_b=  JSON.parse(window.localStorage.getItem('SearchReq'));
                  console.log(this.data_b);

                  this.auth.searchR(this.data_b).subscribe(data => {
                    this.data_ps = data.data;

                  });

                }

                
  ionViewDidLoad() {
    console.log('ionViewDidLoad FilteredRestuarPage');
  }

  goToHomePage(){
    this.navCtrl.setRoot(HomePage);
  }

  goToBookingPage(id : any, cat : any){
    this.navCtrl.setRoot(RestuarReserDetailPage);

    localStorage.setItem('proID', id);
    localStorage.setItem('proCA', cat);
  }


}
