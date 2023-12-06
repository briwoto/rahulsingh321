yarn run v1.22.21
$ D:\repos\rahulsingh321\node_modules\.bin\prisma migrate diff --from-empty --to-schema-datamodel prisma/schema.prisma --script
-- CreateTable
CREATE TABLE "cv_education" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "school_name" VARCHAR(64) NOT NULL,
    "country" VARCHAR(32) NOT NULL,
    "degree" VARCHAR(64) NOT NULL,
    "start_year" SMALLINT NOT NULL,
    "end_year" SMALLINT,

    CONSTRAINT "education_pk" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cv_experience" (
    "company_name" VARCHAR(64) NOT NULL,
    "designation" VARCHAR(64) NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "achievements" TEXT,
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "responsibilities" TEXT,

    CONSTRAINT "experience_pk" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cv_projects" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "title" VARCHAR(64) NOT NULL,
    "experience_id" UUID,
    "description" TEXT,

    CONSTRAINT "projects_pk" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cv_skills" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "skill_type" VARCHAR(16) NOT NULL,
    "skill_name" VARCHAR(32) NOT NULL,
    "level" VARCHAR(16),
    "experience_id" TEXT,

    CONSTRAINT "skills_pk" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cv_user" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "current_experience_id" UUID NOT NULL,
    "city" VARCHAR(16) NOT NULL,
    "country" VARCHAR(16) NOT NULL,
    "linkedin_url" VARCHAR(128),
    "links" JSONB,
    "email" VARCHAR(32) NOT NULL,
    "summary" TEXT,
    "full_name" VARCHAR(32) NOT NULL,

    CONSTRAINT "user_pk" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "cv_user" ADD CONSTRAINT "cv_user_cv_experience_id_fk" FOREIGN KEY ("current_experience_id") REFERENCES "cv_experience"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

Done in 1.26s.
