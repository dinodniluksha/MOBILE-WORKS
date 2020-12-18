import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController} from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';


import {FilteredMeetingHallsPage} from '../filtered-meeting-halls/filtered-meeting-halls';
/**
 * Generated class for the MeetingRoomsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-meeting-rooms',
  templateUrl: 'meeting-rooms.html',
})
export class MeetingRoomsPage {

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              private auth: AuthProvider,
              public alertCrtl: AlertController
             ) 
             {

             }

             search(FormFilter)
               {
                     
                window.localStorage.setItem('SearchReq', JSON.stringify(FormFilter.value));

                  // window.localStorage.setItem('datetime', FormFilter.value);
                  this.auth.searchM(FormFilter.value).subscribe(data =>{console.log(data);})
                  this.auth.searchM(FormFilter.value).subscribe(data =>{
                     if( data.result == 2){
                       
                       FormFilter.location = '';
                       FormFilter.sfrom = '';
                       FormFilter.sto = '';
                       let alert = this.alertCrtl.create({
                         title: 'Sorry not founded',
                         subTitle: data.message,
                         buttons: ['OK']
                       });
                       alert.present();
                     }
               
                     else if(data.result == 1)
                     {
                       this.navCtrl.setRoot(FilteredMeetingHallsPage);
                     }
                   
                     else if(data.result == 3)
                     {
                       FormFilter.sfrom = '';
                       FormFilter.sto = '';
                       let alert = this.alertCrtl.create({
                         title: 'Please try again',
                         subTitle: data.message,
                         buttons: ['OK']
                       });
                       alert.present();
                     }
                   })
                   console.log(FormFilter.value);
                   //console.log(window.localStorage.getItem('datetime'));
             
                 }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MeetingRoomsPage');
  }
  goToHomePage(){
    this.navCtrl.pop();
  }

}
