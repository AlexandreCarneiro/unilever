Quando(/^clicar na categoria "([^"]*)"$/) do |string|
  click_on string
end

Então(/^devo visualizar os produtos dessa categoria$/) do
  @app.categoria.validateLateralMenu
end

Quando(/^clicar em uma subcategoria$/) do
  @app.categoria.foodAndDrinkscategoria.hover
  click_on "Alimentos"
end

Então(/^devo visualizar os produtos dessa subcategoria$/) do
  @app.categoria.validateProducts
  @app.categoria.validateLateralMenu
end

Quando(/^clicar no primeiro produto da página$/) do
  @app.categoria.clickFirstProduct
end

Então(/^eu verei mais informações deste produto$/) do
  @app.categoria.validateProductDescription
end

Quando(/^clicar nas categorias$/) do
  @app.categoria.navigateOnCategories
end

Então(/^devo visualizar a página de cada respectiva categoria$/) do
  @app.categoria.mainMenu.visible?.should be true
end
