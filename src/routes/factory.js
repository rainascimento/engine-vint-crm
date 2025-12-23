import { Router } from 'express';
import BaseController from '../controllers/baseController.js';

export const buildCrudRouter = (model) => {
  const ctrl = new BaseController(model);
  const r = Router();

  r.get('/count', ctrl.count);
  r.get('/', ctrl.findAll);
  if (model.nameField) {
    r.get('/search', ctrl.findByName); // ?q=texto
  }
  r.get('/:id', ctrl.findById);
  r.get('/multi/:id', ctrl.findByIdMulti);
  r.get('/by-fk/:fkField/:fkValue', ctrl.findByFk);
  r.post('/', ctrl.create);
  r.put('/:id', ctrl.update);
  r.delete('/:id', ctrl.remove);

  return r;
};
