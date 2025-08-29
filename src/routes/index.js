import { Router } from 'express';
import { entities } from '../config/entities.js';
import { buildCrudRouter } from './factory.js';

const router = Router();

Object.entries(entities).forEach(([name, model]) => {
  router.use(`/api/${name}`, buildCrudRouter(model));
});

router.get('/health', (req, res) => res.json({ status: 'ok' }));

export default router;
