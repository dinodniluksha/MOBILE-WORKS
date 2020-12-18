import { Component } from '@angular/core';
import { NavController, NavParams, AlertController  } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';

import { FilteredBanquetHallsPage } from '../filtered-banquet-halls/filtered-banquet-halls';
/**
 * Generated class for the AparReserDetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-apar-reser-detail',
  templateUrl: 'apar-reser-detail.html',
})
export class AparReserDetailPage {

  det : any;
  detCA : any;
  bfrom : any;
  bto : any;

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private auth: AuthProvider,
              public alertCrtl: AlertController
              )
                {
                  this.det = localStorage.getItem('proID');

                  this.detCA = localStorage.getItem('proCA');

                  this.bfrom = localStorage.getItem('x');

                  this.bto = localStorage.getItem('y');
                }
   
                /*AparBookF(){

                  let AdvanData = {
                                            "pid" : "2",
                                            "productcategory" : "A"
                                  };

                  let JAdvanData = JSON.stringify(AdvanData);         
  
                 this.auth.AparBook(JAdvanData).subscribe(data =>{
                    if( data.success == 1){
                      //FormDet.name = '';
                      //FormDet.email = '';
                      //FormDet.password = '';
                      //FormDet.confirm_password = '';
                      let alert = this.alertCrtl.create({
                        title: 'Recoard Added',
                        subTitle: data.message,
                        buttons: ['OK']
                      });
                      alert.present();

                      this.navCtrl.setRoot(FilteredBanquetHallsPage);
                    }
              
                    
                  } );
                  
                 //this.auth.AparBook(FormDet.value).subscribe(data =>{console.log(data);}, err => { console.log(err); } );

                  //console.log(FormDet.value.pid);
                  console.log(this.det);
                  //console.log(window.localStorage.getItem('user'));
                } */


              

                AparBookF(FormDet){

                    window.localStorage.setItem('user', this.det);
                    // console.log(FormDet.value);
                    // console.log(FormDet.value.pid);

                    FormDet.value.pid = this.det;

                    FormDet.value.productcategory = this.detCA;

                    FormDet.value.from = this.bfrom;

                    FormDet.value.to = this.bto;
                    
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

                        this.navCtrl.setRoot(FilteredBanquetHallsPage);
                      }
                
                      
                    } );
                    
                   //this.auth.AparBook(FormDet.value).subscribe(data =>{console.log(data);}, err => { console.log(err); } );

                    console.log(FormDet.value.pid);
                    console.log(this.det);
                    console.log(this.detCA);
                    console.log(window.localStorage.getItem('user'));
                  } 
                  



  ionViewDidLoad() {
    console.log('ionViewDidLoad AparReserDetailPage');
  }

  goToPrev(){
    this.navCtrl.setRoot(FilteredBanquetHallsPage);
  }

}
