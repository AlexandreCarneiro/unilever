Quando(/^acessar o catálogo$/) do
 # click_on "Ver catálogo Unilever"
end

Então(/^estarei na home logada do site$/) do
   @app.home.validateHome
end

Então(/^devo visualizar o catálogo da home deslogada$/) do
  @app.home.validateHome
end

Quando(/^eu fizer o logout$/) do
	@app.home.doLogout
	#@app.home.validateLogout
end

