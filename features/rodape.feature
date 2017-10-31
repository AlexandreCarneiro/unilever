#language: pt
#utf-8

@rodape
Funcionalidade: Login
	Eu como cliente Unilever
	Quero acessar os links de rodapé
	Para acessar informações institucionais


@positivo
	Cenário: Acessar a pagina de Quem somos
		Dado que eu esteja na home do site Unilever
		Quando acessar Quem somos no Rodapé
		Então estarei na pagina institucional "Quem somos"

@positivo
	Cenário: Acessar a pagina de Nossos Parceiros
		Dado que eu esteja na home do site Unilever
		Quando acessar Nossos parceiros no Rodapé
		Então estarei na pagina institucional "Nossos Parceiros"

@positivo
	Cenário: Acessar a pagina de Regras para uso
		Dado que eu esteja na home do site Unilever
		Quando acessar Regras para uso no Rodapé
		Então estarei na pagina institucional "Regras para uso"

@positivo
	Cenário: Acessar a pagina de Politica de Privacidade
		Dado que eu esteja na home do site Unilever
		Quando acessar Política de privacidade no Rodapé
		Então estarei na pagina institucional "Política de Privacidade"

@positivo
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Serviço de Atendimento no Rodapé
		Então estarei na pagina institucional "Serviço de Atendimento"

@positivo2
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Como Comprar no Rodapé
		Então o pop up do video estará aberto

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Primeiro Acesso no Rodapé
		Então estarei na pagina institucional "Primeiro Acesso"

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Após a Conclusão do Pedido no Rodapé
		Então estarei na pagina institucional "Após a Conclusão do Pedido"

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Garantia de Produto no Rodapé
		Então estarei na pagina institucional "Garantia de Produto"

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Trocas e Devoluções no Rodapé
		Então estarei na pagina institucional "Trocas e Devoluções"

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Planogramas para prateleiras no Rodapé
		Então estarei na pagina institucional "Planogramas"

@positivo1
	Cenário: Acessar a pagina de Servico de Atendimento
		Dado que eu esteja na home do site Unilever
		Quando acessar Dicas para seu negócio no Rodapé
		Então estarei na pagina institucional "Artigos"