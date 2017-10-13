Quando(/^acessar o catálogo$/) do
 # click_on "Ver catálogo Unilever"
end

Então(/^estarei na home logada do site$/) do
   @app.home.validarHome
end

Então(/^devo visualizar o catálogo da home deslogada$/) do
  @app.home.validarHome
end

Quando(/^eu fizer o logout$/) do
	@app.home.logout
end
