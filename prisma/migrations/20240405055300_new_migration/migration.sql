/*
  Warnings:

  - You are about to drop the `Lead` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "credits" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "registrationPage" INTEGER NOT NULL DEFAULT 0;

-- DropTable
DROP TABLE "Lead";

-- CreateTable
CREATE TABLE "LeadRow" (
    "id" SERIAL NOT NULL,
    "employees" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "platform" TEXT NOT NULL,
    "revenue" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "company_address" TEXT NOT NULL,
    "technologies" TEXT NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "person_linkedin_url" TEXT NOT NULL,
    "departments" TEXT NOT NULL,
    "other_emails" TEXT NOT NULL,
    "company_name_for_emails" TEXT NOT NULL,
    "corporate_phone" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "company_linkedin_url" TEXT NOT NULL,
    "facebook_url" TEXT NOT NULL,
    "twitter_url" TEXT NOT NULL,
    "tiktok_url" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "total_funding" TEXT NOT NULL,
    "latest_funding" TEXT NOT NULL,
    "domain" TEXT NOT NULL,
    "latest_funding_amount" TEXT NOT NULL,

    CONSTRAINT "LeadRow_pkey" PRIMARY KEY ("id")
);
