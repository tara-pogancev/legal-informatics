import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AkomaNtosoCasesComponent } from './components/pages/akoma-ntoso-cases/akoma-ntoso-cases.component';
import { AkomaNtosoLawComponent } from './components/pages/akoma-ntoso-law/akoma-ntoso-law.component';
import { DocumentsListPageComponent } from './components/pages/documents-list-page/documents-list-page.component';
import { NewCaseComponent } from './components/pages/new-case/new-case.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: '/pdf',
    pathMatch: 'full',
  },
  {
    path: 'pdf',
    component: DocumentsListPageComponent,
  },
  { path: 'akoma-ntoso-judgement', component: AkomaNtosoCasesComponent },
  { path: 'akoma-ntoso-law', component: AkomaNtosoLawComponent },
  { path: 'new', component: NewCaseComponent },
  { path: '**', redirectTo: '/pdf' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
