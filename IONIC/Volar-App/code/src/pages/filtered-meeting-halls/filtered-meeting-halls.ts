import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';

import { HomePage } from '../home/home';
import { MeetHallReserDetailPage } from '../meet-hall-reser-detail/meet-hall-reser-detail';
/**
 * Generated class for the FilteredMeetingHallsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-filtered-meeting-halls',
  templateUrl: 'filtered-meeting-halls.html',
})
export class FilteredMeetingHallsPage {

  data_ps : Array<{}>;
  data_b : any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              private auth: AuthProvider
             ) 
             {
              this.data_b=  JSON.parse(window.localStorage.getItem('SearchReq'));
                  console.log(this.data_b);

                  this.auth.searchM(this.data_b).subscribe(data => {
                    this.data_ps = data.data;

                  });
             }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FilteredMeetingHallsPage');
  }

  goToHomePage(){
    this.navCtrl.setRoot(HomePage);
  }

  goToBookingPage(id : any, cat : any){
    this.navCtrl.setRoot(MeetHallReserDetailPage);

    localStorage.setItem('proID', id);
    localStorage.setItem('proCA', cat);
  }

}
