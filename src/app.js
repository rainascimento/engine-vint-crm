import express from 'express';
import morgan from 'morgan';
import cors from 'cors';
import router from './routes/index.js';

const app = express();
app.use(cors());
app.use(express.json());
app.use(morgan('dev'));

app.use(router);

import swaggerUi from 'swagger-ui-express';
import { buildOpenApiSpec } from './swagger.js';

const swaggerSpec = buildOpenApiSpec();
app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));
app.get('/docs-json', (_req, res) => res.json(swaggerSpec));

export default app;
