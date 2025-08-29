export default class BaseController {
  constructor(model) {
    this.model = model;
    this.count = this.count.bind(this);
    this.findAll = this.findAll.bind(this);
    this.findById = this.findById.bind(this);
    this.findByName = this.findByName.bind(this);
    this.create = this.create.bind(this);
    this.update = this.update.bind(this);
    this.remove = this.remove.bind(this);
  }

  async count(req, res) {
    try {
      const total = await this.model.count();
      res.json({ total });
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  }

  async findAll(req, res) {
    try {
      const data = await this.model.findAll();
      res.json(data);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  }

  async findById(req, res) {
    try {
      const { id } = req.params;
      const row = await this.model.findById(id);
      if (!row) return res.status(404).json({ error: 'Not found' });
      res.json(row);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  }

  async findByName(req, res) {
    try {
      const { q } = req.query;
      if (!q) return res.status(400).json({ error: 'Query param q é obrigatório' });
      const rows = await this.model.findByName(q);
      res.json(rows);
    } catch (e) {
      res.status(400).json({ error: e.message });
    }
  }

  async create(req, res) {
    try {
      const created = await this.model.create(req.body);
      res.status(201).json(created);
    } catch (e) {
      res.status(400).json({ error: e.message });
    }
  }

  async update(req, res) {
    try {
      const { id } = req.params;
      const ok = await this.model.update(id, req.body);
      if (!ok) return res.status(404).json({ error: 'Not found' });
      const now = await this.model.findById(id);
      res.json(now);
    } catch (e) {
      res.status(400).json({ error: e.message });
    }
  }

  async remove(req, res) {
    try {
      const { id } = req.params;
      const ok = await this.model.delete(id);
      if (!ok) return res.status(404).json({ error: 'Not found' });
      res.status(204).send();
    } catch (e) {
      res.status(400).json({ error: e.message });
    }
  }
}
