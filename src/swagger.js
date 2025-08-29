import { entities } from './config/entities.js';

/**
 * Gera um documento OpenAPI 3.0 com base nas entidades configuradas.
 * Cada entidade recebe rotas:
 *  - GET    /api/{ent}/count
 *  - GET    /api/{ent}
 *  - GET    /api/{ent}/{id}
 *  - GET    /api/{ent}/search?q= (se nameField existir)
 *  - POST   /api/{ent}
 *  - PUT    /api/{ent}/{id}
 *  - DELETE /api/{ent}/{id}
 */
export function buildOpenApiSpec() {
  const paths = {};

  const genericObj = { type: 'object', additionalProperties: true };

  Object.entries(entities).forEach(([name, model]) => {
    const base = `/api/${name}`;

    // /count
    paths[`${base}/count`] = {
      get: {
        tags: [name],
        summary: `Conta registros em ${name}`,
        responses: {
          '200': {
            description: 'Total de registros',
            content: {
              'application/json': {
                schema: { type: 'object', properties: { total: { type: 'integer' } } }
              }
            }
          }
        }
      }
    };

    // / (GET, POST)
    paths[base] = {
      get: {
        tags: [name],
        summary: `Lista todos de ${name}`,
        responses: {
          '200': { description: 'OK', content: { 'application/json': { schema: { type: 'array', items: genericObj } } } }
        }
      },
      post: {
        tags: [name],
        summary: `Cria um novo em ${name}`,
        requestBody: {
          required: true,
          content: { 'application/json': { schema: genericObj } }
        },
        responses: {
          '201': { description: 'Criado', content: { 'application/json': { schema: genericObj } } },
          '400': { description: 'Erro de validação' }
        }
      }
    };

    // /search (opcional)
    if (model.nameField) {
      paths[`${base}/search`] = {
        get: {
          tags: [name],
          summary: `Busca em ${name} por ${model.nameField}`,
          parameters: [
            { name: 'q', in: 'query', required: true, schema: { type: 'string' }, description: 'Texto a buscar' }
          ],
          responses: {
            '200': {
              description: 'Resultados',
              content: { 'application/json': { schema: { type: 'array', items: genericObj } } }
            },
            '400': { description: 'Parâmetro inválido ou não suportado' }
          }
        }
      };
    }

    // /:id (GET, PUT, DELETE)
    paths[`${base}/{id}`] = {
      get: {
        tags: [name],
        summary: `Busca por ID em ${name}`,
        parameters: [{ name: 'id', in: 'path', required: true, schema: { type: 'string' } }],
        responses: {
          '200': { description: 'Encontrado', content: { 'application/json': { schema: genericObj } } },
          '404': { description: 'Não encontrado' }
        }
      },
      put: {
        tags: [name],
        summary: `Atualiza por ID em ${name}`,
        parameters: [{ name: 'id', in: 'path', required: true, schema: { type: 'string' } }],
        requestBody: { required: true, content: { 'application/json': { schema: genericObj } } },
        responses: {
          '200': { description: 'Atualizado', content: { 'application/json': { schema: genericObj } } },
          '400': { description: 'Erro de validação' },
          '404': { description: 'Não encontrado' }
        }
      },
      delete: {
        tags: [name],
        summary: `Remove por ID em ${name}`,
        parameters: [{ name: 'id', in: 'path', required: true, schema: { type: 'string' } }],
        responses: {
          '204': { description: 'Removido' },
          '404': { description: 'Não encontrado' }
        }
      }
    };
  });

  const spec = {
    openapi: '3.0.3',
    info: {
      title: 'engine-crm2 API (auto)',
      version: '1.0.0',
      description: 'Especificação OpenAPI gerada com base nas entidades configuradas.'
    },
    servers: [{ url: 'http://localhost:3000' }],
    paths
  };

  return spec;
}
