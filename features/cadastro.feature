#language: pt
#utf-8

@cadastro
Funcionalidade: Login
	Eu como possivel cliente da Unilever
	Quero me cadastrar no site
	Para para realizar compras 

#cucumber --t @cadastro --t @negativo123
@negativo
	Cenário: Realizar cadastro sem sucesso com campo e-mail vazio
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "e-mail" com informações da "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "e-mail"

@negativo
	Cenário: Realizar cadastro sem sucesso digitando e-mail inválido
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "e-mail" com informações da "novo_cadastro_invalido"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "e-mail"

@negativo
	Cenário: Realizar cadastro sem sucesso com campo Senha vazio
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "senha" com informações da "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "senha"

@negativo
	Cenário: Realizar cadastro sem sucesso digitando Repita Senha Diferente de Senha
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "Repita Senha" com informações da "novo_cadastro_invalido"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "não está igual"

@negativo
	Cenário: Realizar cadastro sem sucesso com campo Seu Nome vazio
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "Seu Nome" com informações da "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "Seu Nome"

@negativo
	Cenário: Realizar cadastro sem sucesso com campo Repita Senha vazio
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "Repita Senha" com informações da "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "Repita a Senha"

@negativo
	Cenário: Realizar cadastro sem sucesso com campo Telefone e Celular vazio
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro" mas com o campo "Telefone" com informações da "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar critica no campo "Telefone"

@negativo
	Cenário: Realizar cadastro sem sucesso com campos vazios
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro_vazio"
		E eu clicar em novo cadastro
		Então devo visualizar campos vazios com critica

@negativo
	Cenário: Validar Critica CNPJ invalido
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "dados_invalidos_cnpj"
		Então devo visualizar mensagem de CNPJ invalido


@positivo
	Cenário: Realizar Cadastro com Sucesso
		Dado que eu esteja na home do site Unilever
		Quando eu criar um novo cadastro com o cnpj "novo_cadastro"
		E eu validar os dados do cadastro novo
		E eu cadastrar um cliente com as informações "novo_cadastro"
		E eu clicar em novo cadastro
		Então devo visualizar sucesso na criação do usuario 