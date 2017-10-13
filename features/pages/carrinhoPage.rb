class Carrinho < SitePrism::Page
    element :botao_refazer_pedido, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/div/div/div[2]/div[2]/dl/div[3]/input[2]'

    def refazerPedido
        click_on "Refazer pedido"
        click_on "Consultar"
        click_on "3134736"
        botao_refazer_pedido.click
        click_on "Finalizar Compra"
    end
    def pagamento
        # fazer a lógica de pagamento
    end
end
