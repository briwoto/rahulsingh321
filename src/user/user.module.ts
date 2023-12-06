import { Module } from '@nestjs/common';
import { AboutController } from './user.controller';
import { AboutService } from './user.service';

@Module({
  controllers: [AboutController],
  providers: [AboutService],
})
export class UserModule {}
