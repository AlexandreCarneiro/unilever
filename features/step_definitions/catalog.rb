Quando(/^clicar na categoria "([^"]*)"$/) do |string|
  click_on string
end

Então(/^devo visualizar os produtos dessa categoria$/) do
  @app.category.validateLateralMenu
end
