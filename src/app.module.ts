import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ExperienceModule } from './experience/experience.module';
import { PrismaModule } from './prisma/prisma.module';

@Module({
  imports: [UserModule, ExperienceModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
