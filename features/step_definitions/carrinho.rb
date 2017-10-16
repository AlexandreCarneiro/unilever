Quando(/^refazer um pedido$/) do
  @app.carrinho.refazerPedido
  @app.carrinho.pagamentoCartaoCredito
end

Então(/^o devo visualizar o pedido refeito$/) do
  @app.carrinho.validar_pagamento_realizado
end
