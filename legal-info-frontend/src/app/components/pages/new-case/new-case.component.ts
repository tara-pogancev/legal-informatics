import { Component } from '@angular/core';
import { Case } from 'src/app/model/case';
import { Recommendations } from 'src/app/model/recommendations';
import { CbrService } from 'src/app/services/cbr.service';

@Component({
  selector: 'new-case',
  templateUrl: './new-case.component.html',
  styleUrls: ['./new-case.component.scss'],
})
export class NewCaseComponent {
  public case: Case = new Case();
  public krivicnoDelo: String = '';
  public primenjeniPropisi: String = '';
  public recommendations: Recommendations = new Recommendations();
  public isLoading = false;

  constructor(private cbrService: CbrService) {}

  getRecommendations() {
    this.isLoading = true;
    this.cbrService.getRecommendations(this.case).subscribe((response) => {
      this.recommendations = response;
      this.isLoading = false;
    });
  }

  submitNewCase() {
    this.case.krivicnoDelo = this.krivicnoDelo.split(',');
    this.case.krivicnoDelo = this.case.krivicnoDelo.map((x) => {
      return x.trim();
    });

    this.case.primenjeniPropisi = this.primenjeniPropisi.split(',');
    this.case.primenjeniPropisi = this.case.primenjeniPropisi.map((x) => {
      return x.trim();
    });

    this.cbrService.postNewCase(this.case).subscribe((response) => {
      alert('Novi slučaj je zabeležen u bazi!');
      this.case = new Case();
      this.primenjeniPropisi = '';
      this.krivicnoDelo = '';
    });
  }
}
