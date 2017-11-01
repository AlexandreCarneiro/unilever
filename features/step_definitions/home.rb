Quando(/^acessar o catálogo$/) do
 click_on "Ver catálogo Unilever"
end

Quando(/^eu fizer o logout$/) do
  @app.home.logout
end

Quando(/^eu acessar a tela de SServ$/)do
  @app.home.btnUsuario.click
end

Quando(/^eu acessar a pagina do usuario$/) do
	@app.home.btnUsuario.click
end

Então(/^estarei na home logada do site$/) do
   @app.home.validarHome
end

Então(/^devo visualizar o catálogo da home deslogada$/) do
  @app.home.validarHome
end

