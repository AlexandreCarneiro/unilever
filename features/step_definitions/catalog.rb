Quando(/^clicar na categoria "([^"]*)"$/) do |string|
  click_on string
end

Então(/^devo visualizar os produtos dessa categoria$/) do
  @app.category.validateLateralMenu
end

Quando(/^clicar em uma subcategoria$/) do
  @app.category.categoryFoodAndDrinks.hover
  click_on "Alimentos"
end

Então(/^devo visualizar os produtos dessa subcategoria$/) do
  @app.category.validateSubcategoryProducts
  @app.category.validateLateralMenu
end
