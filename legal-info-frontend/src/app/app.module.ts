import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './material-module';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { FooterComponent } from './components/footer/footer.component';
import { DocumentsListPageComponent } from './components/pages/documents-list-page/documents-list-page.component';
import { NewCaseComponent } from './components/pages/new-case/new-case.component';
import { AkomaNtosoCasesComponent } from './components/pages/akoma-ntoso-cases/akoma-ntoso-cases.component';
import { AkomaNtosoLawComponent } from './components/pages/akoma-ntoso-law/akoma-ntoso-law.component';
import { NgxExtendedPdfViewerModule } from 'ngx-extended-pdf-viewer';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    SidebarComponent,
    FooterComponent,
    DocumentsListPageComponent,
    NewCaseComponent,
    AkomaNtosoCasesComponent,
    AkomaNtosoLawComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MaterialModule,
    NgxExtendedPdfViewerModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
