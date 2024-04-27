/*
  Warnings:

  - You are about to drop the `Ingredients` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `Ingredients` to the `Recipes` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Ingredients" DROP CONSTRAINT "Ingredients_recipesId_fkey";

-- AlterTable
ALTER TABLE "Recipes" ADD COLUMN     "Ingredients" TEXT NOT NULL;

-- DropTable
DROP TABLE "Ingredients";
