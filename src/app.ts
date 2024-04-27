import { fastify } from 'fastify'
import { recipesRoutes } from './routes/recipes'
import cors from '@fastify/cors'

const app = fastify()

app.register(cors)

app.register(recipesRoutes)

app.listen({
  host: '0.0.0.0',
  port: process.env.PORT ? Number(process.env.PORT) : 3200
}).then(() => {
  console.log('🚀 HTTP SERVER RUNNING!')
})
