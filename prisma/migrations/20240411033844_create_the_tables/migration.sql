-- CreateTable
CREATE TABLE "Recipes" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "coverImg" TEXT NOT NULL,
    "time" TEXT NOT NULL,

    CONSTRAINT "Recipes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ingrdients" (
    "id" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "recipesId" TEXT NOT NULL,

    CONSTRAINT "Ingrdients_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Ingrdients" ADD CONSTRAINT "Ingrdients_recipesId_fkey" FOREIGN KEY ("recipesId") REFERENCES "Recipes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
