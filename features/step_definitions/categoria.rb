Quando(/^clicar na categoria "([^"]*)"$/) do |nome_categoria|
  click_on nome_categoria
end

Então(/^devo visualizar os produtos dessa categoria$/) do
  @app.categoria.validarMenuLateral
end

Quando(/^clicar em uma subcategoria$/) do
  @app.categoria.categoria_alimentos_bebidas.hover
  click_on "Alimentos"
end

Então(/^devo visualizar os produtos dessa subcategoria$/) do
  @app.categoria.validarProdutos
  @app.categoria.validarMenuLateral
end

Quando(/^clicar no primeiro produto da página$/) do
  @app.categoria.clicarPrimeiroProduto
end

Então(/^eu verei mais informações deste produto$/) do
  @app.categoria.validarDescricaoProdutos
end

Quando(/^clicar nas categorias$/) do
  @app.categoria.navegarCategorias
end

Então(/^devo visualizar a página de cada respectiva categoria$/) do
  @app.categoria.menu_principal.visible?.should be true
end
