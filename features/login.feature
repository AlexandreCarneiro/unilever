#language: pt
#utf-8

Funcionalidade: Login
	Eu como cliente da Unilever
	Quero fazer login no site
	Para acessar minhas informações

	Cenário: Fazer login com dados válidos
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_válidos"
		Então estarei na home logada do site
