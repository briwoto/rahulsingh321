import { Injectable } from '@nestjs/common';

@Injectable({})
export class AboutService {
  getUserInfo() {
    return 'user info from About Service';
  }
}
