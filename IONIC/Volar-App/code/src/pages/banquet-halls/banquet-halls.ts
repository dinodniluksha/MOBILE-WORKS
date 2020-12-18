import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { AuthProvider } from '../../providers/auth/auth';

import {FilteredBanquetHallsPage} from '../filtered-banquet-halls/filtered-banquet-halls';
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
  
  //data_ps : Array<{}>;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              private auth: AuthProvider,
              public alertCrtl: AlertController) 
  {

    //this.auth.pro_data().subscribe(data => {
      //this.data_ps = data.data;
     //});

  }

  search(FormFilter)
	{
     window.localStorage.setItem('SearchReq', JSON.stringify(FormFilter.value));
     
     window.localStorage.setItem('x', FormFilter.sfrom);

     window.localStorage.setItem('y', FormFilter.sto);

     console.log(FormFilter.value.sfrom);

     //this.auth.search(FormFilter.value).subscribe(data =>{console.log(data);})
     this.auth.searchB(FormFilter.value).subscribe(data =>{
      console.log(data)  ;
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
          //window.localStorage.setItem('SearchReq', data.data);
          this.navCtrl.setRoot(FilteredBanquetHallsPage);
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
      
      //console.log(upadata);

    }

  ionViewDidLoad() {
    console.log('ionViewDidLoad BanquetHallsPage');
  }
  goToHomePage(){
    this.navCtrl.pop();
  }

}
