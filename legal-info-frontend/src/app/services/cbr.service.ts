import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { Case } from '../model/case';

@Injectable({
  providedIn: 'root',
})
export class CbrService {
  url = 'http://localhost:8080/cbr';

  constructor(private _http: HttpClient, private route: Router) {}

  getHeaders() {
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
    });
    return headers;
  }

  getHeadersMultipart() {
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
    });
    return headers;
  }

  getAllCasesPdf() {
    const url = this.url + '/cases-pdf';
    return this._http.get<any>(url);
  }

  getCasePdf(name: String) {
    const url = this.url + '/cases-pdf/' + name;
    return this._http.get<any>(url, {
      responseType: 'blob' as 'json',
    });
  }

  getAllLawPdf() {
    const url = this.url + '/laws-pdf';
    return this._http.get<any>(url);
  }

  getLawPdf(name: String) {
    const url = this.url + '/laws-pdf/' + name;
    return this._http.get<any>(url, {
      responseType: 'blob' as 'json',
    });
  }

  getLawAkomaNtoso() {
    const url = this.url + '/laws-akoma-ntoso';
    return this._http.get<any>(url, {
      responseType: 'text' as 'json',
    });
  }

  getCasesAkomaNtoso() {
    const url = this.url + '/cases-akoma-ntoso';
    return this._http.get<any>(url);
  }

  getCaseAkomaNtoso(name: String) {
    const url = this.url + '/cases-akoma-ntoso/' + name;
    return this._http.get<any>(url, {
      responseType: 'text' as 'json',
    });
  }

  getRecommendations(caseDto: Case) {
    const url = this.url + '/recommend-case-solution';
    return this._http.post<any>(url, caseDto);
  }

  extractCaseFeaturesFromPdf(name: String) {
    const url = this.url + '/extract-case-features-from-pdf/' + name;
    return this._http.get<any>(url);
  }

  postNewCase(caseDto: Case) {
    const url = this.url + '/new-case';
    return this._http.post<any>(url, caseDto);
  }
}
