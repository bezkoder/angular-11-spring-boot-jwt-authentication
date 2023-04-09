import { Component, OnInit } from '@angular/core';
import { TokenStorageService } from '../_services/token-storage.service';
import { UserService } from '../_services/user.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  currentUser: any;

  constructor(private token: TokenStorageService, private userService: UserService) { }
//me
  ngOnInit(): void {
    this.userService.getUserBoard().subscribe(
      data => {
        this.currentUser = this.token.getUser();
      },
      err => {
        this.token.signOut();
        window.location.assign("/home");
      }
    );
    
  }
}
