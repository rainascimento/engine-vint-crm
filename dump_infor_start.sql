INSERT INTO `esferas_administrativas` (`nome`) VALUES
('ESTADUAL'),
('FEDERAL'),
('MUNICIPAL'),
('OUTROS');
-- Inserção de esferas administrativas

INSERT INTO `setores` (`nome`) VALUES
('DEMAIS SETORES'),
('EDUCAÇÃO'),
('FINANÇAS'),
('JUDICIÁRIO'),
('SAÚDE'),
('SEGURANÇA'),
('TECNOLOGIA'),
('TRÂNSITO');
-- Inserção de setores
INSERT INTO modalidades (id, nome) VALUES
  ( 1, 'CHAMAMENTO PÚBLICO'),
  ( 2, 'CONCORRÊNCIA'),
  ( 3, 'CONCURSO'),
  ( 4, 'CONVITE'),
  ( 5, 'COTAÇÃO'),
  ( 6, 'CREDENCIAMENTO'),
  ( 7, 'DIÁLOGO COMPETITIVO'),
  ( 8, 'DISPENSA'),
  ( 9, 'LEILÃO'),
  (10, 'PREGÃO'),
  (11, 'TÉCNICA E PREÇO'),
  (12, 'PREGÃO ELETRÔNICO'),
  (13, 'INEXIGIBILIDADE'),
  (14, 'TOMADA DE PREÇOS');
-- Inserção de modalidades

INSERT INTO portais_target (id, nome, url) VALUES
  ( 1, 'BANRISUL', 'https://www.banrisul.com.br/'),
  ( 2, 'BBMNET', 'https://www.bbmnet.com.br/'),
  ( 3, 'BEC SP', 'https://www.bec.sp.gov.br/'),
  ( 4, 'BLL', 'https://www.bll.org.br/'),
  ( 5, 'CEMIG', 'https://www.cemig.com.br/'),
  ( 6, 'COMPRAS AM', 'https://www.compras.am.gov.br/'),
  ( 7, 'COMPRAS CEMIG', 'https://www.compras.cemig.com.br/'),
  ( 8, 'COMPRAS ITAIPU', 'https://www.itaipu.gov.br/compras'),
  ( 9, 'COMPRAS MG', 'https://www.compras.mg.gov.br/'),
  (10, 'COMPRAS MS', 'https://www.compras.ms.gov.br/'),
  (11, 'COMPRAS PARANÁ', 'https://www.compras.pr.gov.br/'),
  (12, 'COMPRAS RJ', 'https://www.compras.rj.gov.br/'),
  (13, 'COMPRAS RS', 'https://www.compras.rs.gov.br/'),
  (14, 'COMPRASNET', 'https://www.comprasnet.gov.br/'),
  (15, 'LICITAÇÃO-E', 'https://www.licitacao-e.com.br/'),
  (16, 'LICITANET', 'https://www.licitanet.com.br/'),
  (17, 'LICITAR DIGITAL', 'https://www.licitardigital.com.br/'),
  (18, 'PE INTEGRADO', 'https://www.peintegrado.pe.gov.br/'),
  (19, 'PNCP', 'https://pncp.gov.br/'),
  (20, 'PORTAL DE COMPRAS PUBLICAS', 'https://www.portaldecompraspublicas.com.br/'),
  (21, 'PORTAL FORNECEDOR RS', 'https://fornecedor.rs.gov.br/'),
  (22, 'PORTAL PRÓPRIO', NULL),
  (23, 'PRESENCIAL', NULL),
  (24, 'SEAD PB', 'https://www.sead.pb.gov.br/'),
  (25, 'SISLOG GO', 'https://www.sislog.go.gov.br/');


  INSERT INTO fases_pipeline (id, nome, sequencia) VALUES
  (1, 'IDENTIFICAÇÃO', 1),
  (2, 'ANÁLISE TÉCNICA', 2),
  (3, 'PARECER', 3),
  (4, 'PROPOSTA', 4),
  (5, 'EM PREGÃO', 5),
  (6, 'FINALIZADOS', 6);

INSERT INTO mercados (id, nome) VALUES
  (1, 'PÚBLICO'),
  (2, 'PRIVADO'),
  (3, 'MISTO');
  

  INSERT INTO categorias (id, nome) VALUES
  (1, 'CAS'),
  (2, 'CDS'),
  (3, 'CGP'),
  (4, 'CLOUD'),
  (5, 'DIVERSOS'),
  (6, 'OUTROS');

  INSERT INTO tipos_parecer (id, nome) VALUES
  (1, 'LICITAÇÕES'),
  (2, 'PRÉ-VENDAS'),
  (3, 'NÉGOCIOS'),
  (4, 'DIRETORIA');

  INSERT INTO motivos_parecer (id, descricao) VALUES
  (1,  'CAPACIDADE DE ATENDIMENTO'),
  (2,  'AUSÊNCIA PARCERIA E TECNOLOGIA'),
  (3,  'AUSÊNCIA PRODUTO'),
  (4,  'ACESSO PORTAL COMPRAS'),
  (5,  'PONTUAÇÃO TÉCNICA'),
  (6,  'CUSTO ELEVADO'),
  (7,  'DECISÃO DIRETORIA'),
  (8,  'TEMPO INSUFICIENTE'),
  (9,  'LIMITAÇÃO TÉCNICA/RISCO'),
  (10, 'NÃO DECLARADO'),
  (11, 'ORÇAMENTO INSUFICIENTE'),
  (12, 'BAIXA PERSPECTIVA DE CONCRETIZAÇÃO'),
  (13, 'FORA DE ESCOPO DE ATUAÇÃO'),
  (14, 'FATO IMPEDITIVO'),
  (15, 'AUSÊNCIA ATESTADOS'),
  (16, 'AUSÊNCIA ATESTADOS E CERTIFICAÇÃO'),
  (17, 'AUSÊNCIA ATESTADOS E PROFISSIONAIS'),
  (18, 'AUSÊNCIA CERTIFICAÇÃO'),
  (19, 'AUSÊNCIA CONSULTOR'),
  (20, 'AUSÊNCIA GERENTE NEGÓCIOS'),
  (21, 'AUSÊNCIA DE SENHA DE ACESSO'),
  (22, 'BAIXA PONTUAÇÃO TÉCNICA');

  INSERT INTO decisoes_parecer (id, nome) VALUES
  (1, 'PENDENTE'),
  (2, 'FAVORÁVEL'),
  (3, 'NÃO FAVORÁVEL');


  INSERT INTO status_parecer (id, nome) VALUES
  (1, 'PENDENTE'),
  (2, 'EM ANÁLISE'),
  (3, 'PRONTO'),
  (4, 'EM REVISÃO'),
  (5, 'REPROVADO');

  INSERT INTO perfis_acesso (id, nome, descricao) VALUES
  (1, 'ADMIN',       'Acesso total ao sistema'),
  (2, 'GESTOR',      'Pode gerenciar oportunidades e pareceres'),
  (3, 'ANALISTA',    'Pode cadastrar e editar oportunidades, submeter pareceres'),
  (4, 'VISUALIZADOR','Acesso somente leitura');


  INSERT INTO permissoes (id, nome, descricao) VALUES
  (1, 'OPORTUNIDADES_VIEW',   'Visualizar oportunidades'),
  (2, 'OPORTUNIDADES_EDIT',   'Criar/Editar oportunidades'),
  (3, 'OPORTUNIDADES_DELETE', 'Excluir oportunidades'),
  (4, 'PARECERES_VIEW',       'Visualizar pareceres'),
  (5, 'PARECERES_EDIT',       'Criar/Editar pareceres'),
  (6, 'PARECERES_DELETE',     'Excluir pareceres'),
  (7, 'USUARIOS_VIEW',        'Visualizar usuários'),
  (8, 'USUARIOS_EDIT',        'Criar/Editar usuários'),
  (9, 'USUARIOS_DELETE',      'Excluir usuários'),
  (10,'CONFIG_VIEW',          'Visualizar configurações'),
  (11,'CONFIG_EDIT',          'Alterar configurações');


  INSERT INTO status_usuario (id, nome) VALUES
  (1, 'ATIVO'),
  (2, 'INATIVO'),
  (3, 'SUSPENSO'),
  (4, 'AGUARDANDO CONFIRMAÇÃO');

  INSERT INTO funcoes (id, nome, descricao) VALUES
  (1, 'DIRETOR DE NEGOCIOS',       'Responsável por decisões estratégicas e gestão executiva'),
  (2, 'GERENTE DE NEGOCIOS',       'Gestão de contas e relacionamento com clientes'),
  (3, 'COORDENADORA DE LICITAÇÕES','Coordenação dos processos de licitação'),
  (4, 'ANALISTA DE LICITAÇÕES',    'Análise e acompanhamento de processos licitatórios'),
  (5, 'ARQUITETO DE SOLUÇÕES',     'Definição técnica e arquitetura de soluções'),
  (6, 'GERENTE DE DELIVERY',       'Gestão de projetos e entregas de soluções'),
  (7, 'ANALISTA DE PRÉ VENDAS',    'Atuação em propostas comerciais e pré-vendas'),
  (8, 'RECURSOS HUMANOS',          'Gestão de pessoas, recrutamento e administração de RH'),
  (9, 'APRENDIZ',                  'Atividades de apoio em desenvolvimento e aprendizado');


  INSERT INTO usuarios (id, nome_usuario, email, funcao_id, perfil_id, status_id, senha_acesso, ultimo_acesso, foto_avatar) VALUES
(1, 'Administrador do Sistema', 'admin@enginecrm.com', 5, 1, 1, MD5('admin123'), NOW(), NULL);

-- Usuário Gerente de Negócios
INSERT INTO usuarios (id, nome_usuario, email, funcao_id, perfil_id, status_id, senha_acesso, ultimo_acesso, foto_avatar) VALUES
(2, 'Gerente de Negócios', 'gerente@enginecrm.com', 2, 2, 1, MD5('gerente123'), NOW(), NULL);

-- Usuário Analista de Licitações
INSERT INTO usuarios (id, nome_usuario, email, funcao_id, perfil_id, status_id, senha_acesso, ultimo_acesso, foto_avatar) VALUES
(3, 'Analista de Licitações', 'analista@enginecrm.com', 4, 3, 1, MD5('analista123'), NOW(), NULL);

-- Usuário Visualizador
INSERT INTO usuarios (id, nome_usuario, email, funcao_id, perfil_id, status_id, senha_acesso, ultimo_acesso, foto_avatar) VALUES
(4, 'Visualizador', 'viewer@enginecrm.com', 9, 4, 1, MD5('viewer123'), NOW(), NULL);


INSERT INTO perfis_permissoes (perfil_id, permissao_id)
SELECT 1, id FROM permissoes;

-- =====================================================
-- GESTOR (id 2) → oportunidades + pareceres (visualizar/editar/deletar)
-- =====================================================
INSERT INTO perfis_permissoes (perfil_id, permissao_id) VALUES
  (2, 1), -- OPORTUNIDADES_VIEW
  (2, 2), -- OPORTUNIDADES_EDIT
  (2, 3), -- OPORTUNIDADES_DELETE
  (2, 4), -- PARECERES_VIEW
  (2, 5), -- PARECERES_EDIT
  (2, 6); -- PARECERES_DELETE

-- =====================================================
-- ANALISTA (id 3) → oportunidades (view/edit), pareceres (view/edit)
-- =====================================================
INSERT INTO perfis_permissoes (perfil_id, permissao_id) VALUES
  (3, 1), -- OPORTUNIDADES_VIEW
  (3, 2), -- OPORTUNIDADES_EDIT
  (3, 4), -- PARECERES_VIEW
  (3, 5); -- PARECERES_EDIT

-- =====================================================
-- VISUALIZADOR (id 4) → apenas visualizar oportunidades e pareceres
-- =====================================================
INSERT INTO perfis_permissoes (perfil_id, permissao_id) VALUES
  (4, 1), -- OPORTUNIDADES_VIEW
  (4, 4); -- PARECERES_VIEW


  INSERT INTO categorias (id, nome) VALUES
  (7,  'BI & ANALITCS'),
  (8,  'CALL CENTER'),
  (9,  'CHATBOT'),
  (10, 'CIBERSEGURANÇA'),
  (11, 'DEV/MAN/SUS PRODUTO'),
  (12, 'DEVOPS / DEVSECOPS'),
  (13, 'FABRICA DE SOFTWARE'),
  (14, 'HARDWARE'),
  (15, 'HELP/SERVICE DESK'),
  (16, 'INFRAESTRUTURA'),
  (17, 'INTELIGÊNCIA ARTIFICIAL'),
  (18, 'LICENCIAMENTO'),
  (19, 'NOC / SOC'),
  (20, 'RPA - ROBOTC PROCESS AUTOMATION'),
  (21, 'SAAS / PAAS / IAAS');