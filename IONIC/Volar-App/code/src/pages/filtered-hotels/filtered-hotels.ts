import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';


import { HomePage } from '../home/home';
import { HotelsReserDetailPage } from '../hotels-reser-detail/hotels-reser-detail';

/**
 * Generated class for the FilteredHotelsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-filtered-hotels',
  templateUrl: 'filtered-hotels.html',
})
export class FilteredHotelsPage {
 
  data_ps : Array<{}>;
  data_b : any;

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private auth: AuthProvider
             )
              {
                this.data_b=  JSON.parse(window.localStorage.getItem('SearchReq'));
                  console.log(this.data_b);

                  this.auth.searchH(this.data_b).subscribe(data => {
                    this.data_ps = data.data;

                  });

              }

              goToHomePage(){
                this.navCtrl.setRoot(HomePage);
              }
            
              goToBookingPage(id : any, cat : any){
                this.navCtrl.setRoot(HotelsReserDetailPage);
            
                localStorage.setItem('proID', id);
                localStorage.setItem('proCA', cat);
              }
            

  ionViewDidLoad() {
    console.log('ionViewDidLoad FilteredHotelsPage');
  }

}
