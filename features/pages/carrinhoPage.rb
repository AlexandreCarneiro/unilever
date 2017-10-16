class Carrinho < SitePrism::Page
    element :botao_refazer_pedido, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/div/div/div[2]/div[2]/dl/div[3]/input[2]'
    element :cartaoCredito, :xpath, '//*[@id="number[1508160907651][0]"]'
    element :nomeCartaoCredito, :xpath, '//*[@id="name[1508160907655][0]"]'


    def refazerPedido
        click_on "Refazer pedido"
        click_on "Consultar"
        click_on "3134736"
        botao_refazer_pedido.click
        click_on "Finalizar Compra"
    end

    def pagamentoCartaoCredito
        click_on "Cartão de crédito"
    end
end
