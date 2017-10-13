Quando(/^refazer um pedido$/) do
  @app.carrinho.refazerPedido
  @app.carrinho.pagamento
end

Então(/^o devo visualizar o pedido refeito$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
