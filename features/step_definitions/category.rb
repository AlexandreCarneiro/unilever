Quando(/^clicar na categoria "([^"]*)"$/) do |string|
  click_on string
end

Então(/^devo visualizar os produtos dessa categoria$/) do
  @app.category.validateLateralMenu
end

Quando(/^clicar em uma subcategoria$/) do
  @app.category.foodAndDrinksCategory.hover
  click_on "Alimentos"
end

Então(/^devo visualizar os produtos dessa subcategoria$/) do
  @app.category.validateProducts
  @app.category.validateLateralMenu
end

Quando(/^clicar no primeiro produto da página$/) do
  @app.category.clickFirstProduct
end

Então(/^eu verei mais informações deste produto$/) do
  @app.category.validateProductDescription
end

Quando(/^clicar nas categorias$/) do
  @app.category.navigateOnCategories
end

Então(/^devo visualizar a página de cada respectiva categoria$/) do
  @app.category.mainMenu.visible?.should be true
end
