import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { WelcomePage } from '../welcome/welcome';
import { AuthProvider } from '../../providers/auth/auth';
//

import { BanquetHallsPage } from '../banquet-halls/banquet-halls';
import { MeetingRoomsPage } from '../meeting-rooms/meeting-rooms';
import { ApartmentsAndHousesPage } from '../apartments-and-houses/apartments-and-houses';
import {RestaurentsPage} from '../restaurents/restaurents';
import {HotelsPage} from '../hotels/hotels';
/**
 * Generated class for the HomePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
})
export class HomePage {

data_n:string;

  constructor(public navCtrl: NavController, public navParams: NavParams, private auth: AuthProvider)
   {
    this.auth.private().subscribe(data => {
      this.data_n = data.name;
     });

   }

   logout(){
    this.auth.logout();
    this.navCtrl.setRoot(WelcomePage);
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad HomePage');
  }
  goToBanquetHallsPage(){
    this.navCtrl.push(BanquetHallsPage);
  }
  goToMeetingRoomsPage(){
    this.navCtrl.push(MeetingRoomsPage);
  }
  goToApartmentsAndHousesPage(){
    this.navCtrl.push(ApartmentsAndHousesPage);
  }
  goToRestaurentsPage(){
    this.navCtrl.push(RestaurentsPage);
  }
  goToHotelsPage(){
    this.navCtrl.push(HotelsPage);
  }

}
