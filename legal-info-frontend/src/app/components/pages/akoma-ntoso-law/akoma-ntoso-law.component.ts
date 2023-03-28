import { Component } from '@angular/core';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';
import { CdrService } from 'src/app/services/cdr.service';

@Component({
  selector: 'akoma-ntoso-law',
  templateUrl: './akoma-ntoso-law.component.html',
  styleUrls: ['./akoma-ntoso-law.component.scss'],
})
export class AkomaNtosoLawComponent {
  public xmlDocument: Document = new Document();
  public xmlHtml: SafeHtml | undefined;

  constructor(
    private cdrService: CdrService,
    private sanitizer: DomSanitizer,
    private activatedRoute: ActivatedRoute,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.cdrService.getLawAkomaNtoso().subscribe((response) => {
      this.xmlDocument = new DOMParser().parseFromString(response, 'text/xml');
      this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
        new XMLSerializer().serializeToString(this.xmlDocument)
      );

      window.onload = () => {
        let scrollTo = this.router.url.split('#')[1];
        if (scrollTo != undefined) {
          const myElement = document.getElementById(scrollTo);
          if (myElement != null) {
            myElement.scrollIntoView();
          }
        }
      };
    });
  }
}
