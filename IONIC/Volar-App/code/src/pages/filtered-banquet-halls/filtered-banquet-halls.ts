import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';

import { HomePage } from '../home/home';
import { AparReserDetailPage } from '../apar-reser-detail/apar-reser-detail';
/**
 * Generated class for the FilteredBanquetHallsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-filtered-banquet-halls',
  templateUrl: 'filtered-banquet-halls.html',
})
export class FilteredBanquetHallsPage {

  //valt : Array<{}>;
  data_ps : Array<{}>;
  data_b : any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              private auth: AuthProvider
             ) 
              {
                  //valt = window.localStorage.getItem('SearchReq');

                  /*this.auth.pro_data().subscribe(data => {
                    this.data_ps = data.data;
                  });*/
                  
                  this.data_b=  JSON.parse(window.localStorage.getItem('SearchReq'));
                  console.log(this.data_b);

                  this.auth.searchB(this.data_b).subscribe(data => {
                    this.data_ps = data.data;

                  });

              }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FilteredBanquetHallsPage');
  }

  goToHomePage(){
    this.navCtrl.setRoot(HomePage);
  }

  goToBookingPage(id : any, cat : any){
    this.navCtrl.setRoot(AparReserDetailPage);

    localStorage.setItem('proID', id);
    localStorage.setItem('proCA', cat);
  }

}
