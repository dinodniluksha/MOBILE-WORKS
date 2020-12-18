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
    RestaurentsPage
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
    RestaurentsPage
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
