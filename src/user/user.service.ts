import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class AboutService {
  constructor(private prismaService: PrismaService) {}
  getUserInfo() {
    const data = this.prismaService.cv_user.findFirst();
    return data;
  }
}
