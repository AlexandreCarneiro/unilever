#language: pt
#utf-8

Funcionalidade: Catalogo
	Eu como cliente da Unilever
	Quero acessar o catálogo de produtos
	Para visualizar mais informações sobre eles

Cenário: Validar página home deslogado
  Dado que eu esteja na home do site Unilever
  Quando acessar o catálogo
  Então devo visualizar o catálogo da home deslogada

Cenário: Validar página de categoria deslogado
  Dado que eu esteja na home do site Unilever
  Quando acessar o catálogo
  E clicar na categoria "Alimentos e Bebidas"
  Então devo visualizar os produtos dessa categoria

Cenário: Validar página de subcategoria deslogado
  Dado que eu esteja na home do site Unilever
  Quando acessar o catálogo
  E clicar em uma subcategoria
  Então devo visualizar os produtos dessa subcategoria

Cenário: Validar página de produto deslogado
  Dado que eu esteja na home do site Unilever
  Quando acessar o catálogo
  E clicar na categoria "Alimentos e Bebidas"
  E clicar no primeiro produto da página
  Então eu verei mais informações deste produto

Cenário: Refazer pedido a partir da página principal
Cenário: Navegar no menu de categorias
Cenário: Validar menu lateral ao selecionar categorias
Cenário: Navegar no submenu de categorias
