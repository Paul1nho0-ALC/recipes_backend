/*
  Warnings:

  - You are about to drop the `Ingrdients` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Ingrdients" DROP CONSTRAINT "Ingrdients_recipesId_fkey";

-- DropTable
DROP TABLE "Ingrdients";

-- CreateTable
CREATE TABLE "Ingredients" (
    "id" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "recipesId" TEXT NOT NULL,

    CONSTRAINT "Ingredients_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Ingredients" ADD CONSTRAINT "Ingredients_recipesId_fkey" FOREIGN KEY ("recipesId") REFERENCES "Recipes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
