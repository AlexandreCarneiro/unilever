Quando(/^eu buscar o produto com nome "([^"]*)"$/) do |tipo|
	@app.busca.realizarBusca(MASS[tipo]['produto'])
end

Quando(/^validar o botão de carregar mais produtos$/)do
	#@app.comum.irAteElemento('//*[@id="category"]/div[2]/div[3]/a')
	@app.busca.validarCarregarMaisProdutos
end

Então(/^devo estar na tela de busca valida$/) do
	@app.busca.lblResultadoBusca.visible?.should be true
end