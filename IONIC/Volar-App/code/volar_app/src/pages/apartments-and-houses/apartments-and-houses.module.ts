import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ApartmentsAndHousesPage } from './apartments-and-houses';

@NgModule({
  declarations: [
    ApartmentsAndHousesPage,
  ],
  imports: [
    IonicPageModule.forChild(ApartmentsAndHousesPage),
  ],
})
export class ApartmentsAndHousesPageModule {}
