import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ExperienceModule } from './experience/experience.module';

@Module({
  imports: [UserModule, ExperienceModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
