import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root',
})
export class CdrService {
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
}
