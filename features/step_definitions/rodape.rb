
Quando(/^acessar Quem somos no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeQuemSomos)
 @app.home.lnkRodapeQuemSomos.click
end

Quando(/^acessar Nossos parceiros no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeNossosParceiros)
 @app.home.lnkRodapeNossosParceiros.click
end
Quando(/^acessar Regras para uso no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeRegrasParaUso)
 @app.home.lnkRodapeRegrasParaUso.click
end
Quando(/^acessar Política de privacidade no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapePoliticaPrivacidade)
 @app.home.lnkRodapePoliticaPrivacidade.click
end
Quando(/^acessar Serviço de Atendimento no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeCentralAtendimento)
 @app.home.lnkRodapeCentralAtendimento.click
end
Quando(/^acessar Como Comprar no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeComoComprar)
 @app.home.lnkRodapeComoComprar.click
end
Quando(/^acessar Primeiro Acesso no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapePrimeiroAcesso)
 @app.home.lnkRodapePrimeiroAcesso.click
end
Quando(/^acessar Após a Conclusão do Pedido no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapePosConclusaoPrim)
 @app.home.lnkRodapePosConclusaoPrim.click
end
Quando(/^acessar Garantia de Produto no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeGarantiaProduto)
 @app.home.lnkRodapeGarantiaProduto.click
end
Quando(/^acessar Trocas e Devoluções no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeTrocasDevolucoes)
 @app.home.lnkRodapeTrocasDevolucoes.click
end
Quando(/^acessar Planogramas para prateleiras no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapePlanogramas)
 @app.home.lnkRodapePlanogramas.click
end
Quando(/^acessar Dicas para seu negócio no Rodapé$/) do 
 @app.comum.irAteElemento(@app.home.lnkRodapeDicasParaNegocio)
 @app.home.lnkRodapeDicasParaNegocio.click
end


Então(/^estarei na pagina institucional "([^"]*)"$/) do  |pagina|
	@app.rodape.validaSobreCompra(pagina)
end

Então(/^o pop up do video estará aberto$/) do 
	@app.rodape.validarVideo
end