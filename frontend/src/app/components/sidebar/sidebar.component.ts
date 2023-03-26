import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss'],
})
export class SidebarComponent implements OnInit {
  tab: number = 0;

  constructor(private router: Router) {
    router.events.subscribe((val) => {
      this.toggleSelectedMenuItem();
    });
  }

  ngOnInit(): void {
    setTimeout(() => {
      this.toggleSelectedMenuItem();
    }, 20);
  }

  toggleSelectedMenuItem() {
    switch (this.router.url) {
      case '/pdf':
        this.tab = 0;
        break;
      case '/akoma-ntoso-judgement':
        this.tab = 1;
        break;
      case '/akoma-ntoso-law':
        this.tab = 2;
        break;
      case '/new':
        this.tab = 3;
        break;
      default:
        this.tab = 0;
        break;
    }
  }
}
