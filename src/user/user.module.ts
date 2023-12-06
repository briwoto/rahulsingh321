import { Module } from '@nestjs/common';
import { AboutController } from './user.controller';
import { AboutService } from './user.service';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  imports: [PrismaModule],
  controllers: [AboutController],
  providers: [AboutService],
})
export class UserModule {}
