import { Component } from '@angular/core';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import { Router } from '@angular/router';
import { CdrService } from 'src/app/services/cdr.service';

@Component({
  selector: 'akoma-ntoso-cases',
  templateUrl: './akoma-ntoso-cases.component.html',
  styleUrls: ['./akoma-ntoso-cases.component.scss'],
})
export class AkomaNtosoCasesComponent {
  public xmlDocument: Document = new Document();
  public xmlHtml: SafeHtml | undefined;
  public judgements: String[] = [];
  public currentFile: String = '';

  constructor(
    private cdrService: CdrService,
    private sanitizer: DomSanitizer,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.cdrService.getCasesAkomaNtoso().subscribe((data) => {
      this.judgements = data;
      this.currentFile = this.judgements[0];
      this.refreshCaseFile();
    });
  }

  refreshCaseFile() {
    this.cdrService
      .getCaseAkomaNtoso(this.currentFile)
      .subscribe((response) => {
        this.xmlDocument = new DOMParser().parseFromString(
          response,
          'text/xml'
        );
        this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
          new XMLSerializer().serializeToString(this.xmlDocument)
        );

        /*  window.onload = () => {
        let scrollTo = this.router.url.split('#')[1];
        if (scrollTo != undefined) {
          const myElement = document.getElementById(scrollTo);
          if (myElement != null) {
            myElement.scrollIntoView();
          }
        }
      }; */
      });
  }

  openCaseFile(name: String) {
    this.currentFile = name;
    this.refreshCaseFile();
  }
}
