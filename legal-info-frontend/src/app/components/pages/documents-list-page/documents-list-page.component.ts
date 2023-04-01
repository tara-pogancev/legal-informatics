import { Component, OnInit } from '@angular/core';
import { CbrService } from 'src/app/services/cbr.service';

@Component({
  selector: 'documents-list-page',
  templateUrl: './documents-list-page.component.html',
  styleUrls: ['./documents-list-page.component.scss'],
})
export class DocumentsListPageComponent implements OnInit {
  public judgements: String[] = [];
  public laws: String[] = [];
  public currentPdf: String = '';
  public selectedPdfFile: any = null;

  constructor(private cbrService: CbrService) {}

  ngOnInit(): void {
    this.cbrService.getAllCasesPdf().subscribe((data) => {
      this.judgements = data;
    });

    this.cbrService.getAllLawPdf().subscribe((data) => {
      this.laws = data;
      this.currentPdf = this.laws[0];

      this.refreshLawPdf();
    });
  }

  refreshCasePdf() {
    this.cbrService.getCasePdf(this.currentPdf).subscribe((response: any) => {
      const blob = new Blob([response], { type: 'application/pdf' });
      this.selectedPdfFile = URL.createObjectURL(blob);
    });
  }

  refreshLawPdf() {
    this.cbrService.getLawPdf(this.currentPdf).subscribe((response: any) => {
      const blob = new Blob([response], { type: 'application/pdf' });
      this.selectedPdfFile = URL.createObjectURL(blob);
    });
  }

  openCasePdf(name: String) {
    this.currentPdf = name;
    this.refreshCasePdf();
  }

  openLawPdf(name: String) {
    this.currentPdf = name;
    this.refreshLawPdf();
  }
}
