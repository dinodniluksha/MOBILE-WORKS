import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';

//import { ListPage } from '../pages/list/list';

import { WelcomePage } from '../pages/welcome/welcome';
import { RegisterPage } from '../pages/register/register';
import { LoginPage } from '../pages/login/login';

import { BanquetHallsPage } from '../pages/banquet-halls/banquet-halls';
import { MeetingRoomsPage } from '../pages/meeting-rooms/meeting-rooms';
import { ApartmentsAndHousesPage } from '../pages/apartments-and-houses/apartments-and-houses';
import {HotelsPage} from '../pages/hotels/hotels';
import {RestaurentsPage} from '../pages/restaurents/restaurents';

import {FilteredBanquetHallsPage} from '../pages/filtered-banquet-halls/filtered-banquet-halls';
import {AparReserDetailPage} from '../pages/apar-reser-detail/apar-reser-detail';

import {FilteredAparHousPage} from '../pages/filtered-apar-hous/filtered-apar-hous';
import {AparAndHousReserDetailPage} from '../pages/apar-and-hous-reser-detail/apar-and-hous-reser-detail';

import{FilteredMeetingHallsPage} from '../pages/filtered-meeting-halls/filtered-meeting-halls';
import{MeetHallReserDetailPage} from '../pages/meet-hall-reser-detail/meet-hall-reser-detail';

import {FilteredRestuarPage} from '../pages/filtered-restuar/filtered-restuar';
import {RestuarReserDetailPage} from '../pages/restuar-reser-detail/restuar-reser-detail';

import {FilteredHotelsPage} from '../pages/filtered-hotels/filtered-hotels';
import {HotelsReserDetailPage} from '../pages/hotels-reser-detail/hotels-reser-detail';
//
import { HttpModule } from '@angular/http';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { AuthProvider } from '../providers/auth/auth';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    WelcomePage,
    RegisterPage,
    LoginPage,
    HotelsPage,
    BanquetHallsPage,
    MeetingRoomsPage,
    ApartmentsAndHousesPage,
    RestaurentsPage,

    FilteredBanquetHallsPage,
    AparReserDetailPage,

    FilteredAparHousPage,
    AparAndHousReserDetailPage,

    FilteredMeetingHallsPage,
    MeetHallReserDetailPage,

    FilteredRestuarPage,
    RestuarReserDetailPage,

    FilteredHotelsPage,
    HotelsReserDetailPage
    // ListPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    WelcomePage,
    RegisterPage,
    LoginPage,
    HotelsPage,
    BanquetHallsPage,
    MeetingRoomsPage,
    ApartmentsAndHousesPage,
    RestaurentsPage,

    FilteredBanquetHallsPage,
    AparReserDetailPage,

    FilteredAparHousPage,
    AparAndHousReserDetailPage,

    FilteredMeetingHallsPage,
    MeetHallReserDetailPage,

    FilteredRestuarPage,
    RestuarReserDetailPage,

    FilteredHotelsPage,
    HotelsReserDetailPage
   // ListPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    AuthProvider
  ]
})
export class AppModule {}
