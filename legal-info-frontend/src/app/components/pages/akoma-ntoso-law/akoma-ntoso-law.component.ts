import { Component } from '@angular/core';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
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
    private sanitizer: DomSanitizer
  ) {}

  ngOnInit(): void {
    this.cdrService.getLawAkomaNtoso().subscribe((response) => {
      this.xmlDocument = new DOMParser().parseFromString(response, 'text/xml');
      this.xmlHtml = this.sanitizer.bypassSecurityTrustHtml(
        new XMLSerializer().serializeToString(this.xmlDocument)
      );
    });
  }
}
