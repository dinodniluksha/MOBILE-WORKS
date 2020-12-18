import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { RestaurentsPage } from './restaurents';

@NgModule({
  declarations: [
    RestaurentsPage,
  ],
  imports: [
    IonicPageModule.forChild(RestaurentsPage),
  ],
})
export class RestaurentsPageModule {}
