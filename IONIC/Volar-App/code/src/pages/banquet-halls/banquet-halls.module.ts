import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { BanquetHallsPage } from './banquet-halls';

@NgModule({
  declarations: [
    BanquetHallsPage,
  ],
  imports: [
    IonicPageModule.forChild(BanquetHallsPage),
  ],
})
export class BanquetHallsPageModule {}
