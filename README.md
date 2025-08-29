# engine-crm2-api

API Node.js + Express (MVC simples) conectada ao MySQL com as rotas:
- CRUD (Create/Read/Update/Delete)
- Count (`/count`)
- Find All (`GET /`)
- Find By ID (`GET /:id`)
- Find By Name (`GET /search?q=...`) — quando `nameField` estiver configurado

## Como rodar

1. Crie o schema e tabelas no MySQL (use o script SQL fornecido anteriormente).
2. Copie `.env.example` para `.env` e ajuste as credenciais.
3. Instale dependências e inicie:

```bash
npm i
npm run dev
```

A API sobe em `http://localhost:3000` por padrão.

## Endpoints
- Ex.: `/api/categorias`, `/api/orgaos_publicos`, `/api/oportunidades`, etc.
- `GET /api/<entidade>/count`
- `GET /api/<entidade>`
- `GET /api/<entidade>/:id`
- `GET /api/<entidade>/search?q=texto` (se aplicável)
- `POST /api/<entidade>`
- `PUT /api/<entidade>/:id`
- `DELETE /api/<entidade>/:id`

## Configuração das entidades
Edite `src/config/entities.js` para ajustar campos de `insertable`, `updatable` e `nameField`.

## 📚 Documentação (Swagger)
A documentação interativa é gerada automaticamente a partir das entidades.
- UI: `http://localhost:3000/docs`
- JSON: `http://localhost:3000/docs-json`
