/*
  Warnings:

  - You are about to drop the column `Ingredients` on the `Recipes` table. All the data in the column will be lost.
  - Added the required column `ingredients` to the `Recipes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Recipes" DROP COLUMN "Ingredients",
ADD COLUMN     "ingredients" TEXT NOT NULL;
