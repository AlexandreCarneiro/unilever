Quando(/^eu buscar o produto com nome "([^"]*)"$/) do |tipo|
	@app.busca.realizarBusca(MASS[tipo]['produto 1']) #trocar para @app.home.realizarBusca(MASS[tipo]['produto 1'])
end

Quando(/^validar o botão de carregar mais produtos$/)do
	@app.busca.validarCarregarMaisProdutos 
end

Quando("procurar por {int} produtos") do |int|
	@app.busca.buscarMultiplosProdutos(int) #trocar para @app.home.buscarMultiplosProdutos(int)
end

Então(/^devo estar na tela com multiplas abas de busca$/) do
	@app.busca.btnAbaMultiplosProds.visible?.should be true
end

Então(/^devo estar na tela de busca valida$/) do
	@app.busca.lblResultadoBusca.visible?.should be true
end