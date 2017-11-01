#language: pt
#utf-8

@login
Funcionalidade: Login
	Eu como cliente da Unilever
	Quero fazer login no site
	Para acessar minhas informações
@positivo
	Cenário: Fazer login com dados validos
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_validos"
		Então estarei na home logada do site
@positivo
	Cenário: Fazer logout
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_validos"
		E eu fizer o logout
		Então devo visualizar o catálogo da home deslogada
@positivo
	Cenário: Recuperação de senha
		Dado que eu esteja na home do site Unilever
		Quando eu esquecer a senha com o cnpj "dados_validos"
		Então devo visualizar a mensagem de senha enviada com sucesso
@negativo
	Cenário: Realizar login sem sucesso digitando senha errada
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_invalidos_senha"
		Então não foi possivel realizar o login
@negativo
	Cenário: Realizar login sem sucesso digitando CNPJ invalido
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_invalidos_cnpj"
		Então não foi possivel realizar o login
@negativo	
	Cenário: Realizar login sem sucesso digitando CNPJ gerado por gerador
		Dado que eu esteja na home do site Unilever
		Quando eu fazer o login com "dados_invalidos_cnpjGerado"
		Então não foi possivel realizar o login
# @debug
# 	Cenário: debug
# 	Dado que eu esteja na home do site Unilever
# 	E debug