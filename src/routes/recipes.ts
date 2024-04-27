import { type FastifyInstance } from 'fastify'
import { prisma } from '../lib/prisma'
import { z } from 'zod'

export async function recipesRoutes (app: FastifyInstance) {
  // Get all recipes
  app.get('/recipes', async (request, reply) => {
    const recipes = await prisma.recipes.findMany(
    )
    return recipes
  })

  // Get one recipe
  app.get('/recipes/:id', async (request) => {
    const requestParamsSchema = z.object({
      id: z.string().min(1)
    })

    const { id } = requestParamsSchema.parse(request.params)

    const recipe = await prisma.recipes.findUniqueOrThrow({
      where: {
        id
      }

    })
    return recipe
  })

  // Create a recipe
  app.post('/recipes', async (request, reply) => {
    const bodySchema = z.object({
      title: z.string().min(1),
      description: z.string().min(1),
      ingredients: z.string().min(1)
    })

    const { title, description, ingredients } = bodySchema.parse(request.body)

    await prisma.recipes.create({
      data: {
        title,
        description,
        ingredients
      }
    })
    return await reply.status(201).send('Receita criada com sucesso!')
  })

  // Delete a recipe
  app.delete('/recipes/:id', async (request) => {
    const requestParamsSchema = z.object({
      id: z.string().min(1)
    })

    const { id } = requestParamsSchema.parse(request.params)

    await prisma.recipes.delete({
      where: {
        id
      }
    })
  })
}
