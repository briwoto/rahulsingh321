import { Controller, Get } from '@nestjs/common';
import { AboutService } from './user.service';

@Controller('user')
export class AboutController {
  constructor(private aboutService: AboutService) {}

  @Get('info')
  userInfo() {
    return this.aboutService.getUserInfo();
  }
}
