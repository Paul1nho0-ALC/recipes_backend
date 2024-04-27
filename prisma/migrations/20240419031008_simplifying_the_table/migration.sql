/*
  Warnings:

  - You are about to drop the column `coverImg` on the `Recipes` table. All the data in the column will be lost.
  - You are about to drop the column `time` on the `Recipes` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Recipes" DROP COLUMN "coverImg",
DROP COLUMN "time";
