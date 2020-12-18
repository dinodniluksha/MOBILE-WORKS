import { Component } from '@angular/core';
import { NavController, NavParams, AlertController} from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';


import {FilteredMeetingHallsPage} from '../filtered-meeting-halls/filtered-meeting-halls';
/**
 * Generated class for the MeetHallReserDetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-meet-hall-reser-detail',
  templateUrl: 'meet-hall-reser-detail.html',
})
export class MeetHallReserDetailPage {

  det : any;
  detCA : any;

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private auth: AuthProvider,
              public alertCrtl: AlertController
             )
              {
                this.det = localStorage.getItem('proID');

                this.detCA = localStorage.getItem('proCA');
              }

              AparBookF(FormDet){

                window.localStorage.setItem('user', this.det);

                FormDet.value.pid = this.det;

                FormDet.value.productcategory = this.detCA;

               this.auth.AparBook(FormDet.value).subscribe(data =>{
                  if( data.success == 1){
                    //FormDet.name = '';
                    //FormDet.email = '';
                    //FormDet.password = '';
                    //FormDet.confirm_password = '';
                    let alert = this.alertCrtl.create({
                      title: 'Reserved Succesfull',
                      subTitle: data.message,
                      buttons: ['OK']
                    });
                    alert.present();

                    this.navCtrl.setRoot(FilteredMeetingHallsPage);
                  }
            
                  
                } );
                
               //this.auth.AparBook(FormDet.value).subscribe(data =>{console.log(data);}, err => { console.log(err); } );

                console.log(FormDet.value.pid);
                console.log(this.det);
                console.log(window.localStorage.getItem('user'));
              } 


  ionViewDidLoad() {
    console.log('ionViewDidLoad MeetHallReserDetailPage');
  }

  goToPrev(){
    this.navCtrl.setRoot(FilteredMeetingHallsPage);
  }

}
