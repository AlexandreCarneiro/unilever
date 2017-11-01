#language: pt
#utf-8

@meuCadastro
Funcionalidade: Meu Cadastro
	Eu como cliente da Unilever
	Quero acessar meu cadastro
	Para visualizar e alterar minhas informações

@positivo
Cenário: Alterar dados da empresa com sucesso
  Dado que eu esteja na home do site Unilever
  Quando eu fazer o login com "dados_validos"
  E eu acessar a pagina do usuario
  E acessar Dados da Empresa
  E eu alterar as informações da empresa
  E eu clicar em Alterar Cadastro
  Então eu visualizarei a pagina de sucesso de alteração de informações

@positivo123
Cenário: Alterar dados da empresa com sucesso
  Dado que eu esteja na home do site Unilever
  Quando eu fazer o login com "dados_validos"
  E eu acessar a pagina do usuario
  E acessar Alterar Meu Email
  E eu alterar alterar as informações Email 'vazio', Senha 'novo_cadastro', Novo Email 'novo_cadastro', Confirmação de Novo Email 'novo_cadastro'
  E eu clicar em Alterar Cadastro
  Então eu visualizarei a pagina de sucesso de alteração de informações

