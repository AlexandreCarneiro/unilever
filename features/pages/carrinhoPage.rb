class Carrinho < SitePrism::Page
    element :refazer_pedido_menu, '.reorder'
    element :botao_refazer_pedido, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/div/div/div[2]/div[2]/dl/div[3]/input[2]'
    element :aceitar_politica_cartao_credito, :xpath, '//*[@id="content"]/div/div/section[3]/div/section[2]/blockquote/p/label'
    element :pagamento_realizado, '.fieldset.alias-content-confirmarion'

    def refazerPedido
        wait_for_refazer_pedido_menu
        click_on "Refazer pedido"
        click_on "Consultar"
        click_on "3134736"
        botao_refazer_pedido.click
        click_on "Finalizar Compra"
    end

    def pagamentoCartaoCredito
        click_on "Cartão de crédito"

        fill_in 'number', :with => '4999999999999999'
        fill_in 'name', :with => 'TESTE R TESTE'
        find_field('validity-month').select '08'
        find_field('validity-year').select '2024'
        fill_in 'code', :with => '789'
        find_field('installment').select '1x de R$ 251,52 s/ juros'
        aceitar_politica_cartao_credito.click

        click_on "Confirmar Pagamento"
    end

    def validar_pagamento_realizado
        pagamento_realizado.visible?.should be true
        assert_text 'Compra feita com sucesso.'
    end
end
