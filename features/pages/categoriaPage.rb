class Categoria < SitePrism::Page

    # Categorias
    element :categoria_alimentos_bebidas, '.nav-item.alimentos-e-bebidas.has-submenu'
    element :categoria_roupa_casa, '.nav-item.cuidados-com-a-roupa-e-casa.has-submenu'
    element :categoria_cuidados_pessoais, '.nav-item.cuidados-pessoais.has-submenu'
    element :categoria_alimentos_profissionais, '.nav-item.alimentos-profissionais'

    element :menu_principal, :xpath, '//*[@id="home-depto"]/nav'
    # Dentro de uma categoria
    element :nome_categoria, '.level-name'
    element :menu_lateral, '.box-udas.box-marca.box-marca.pos-0'
    element :lista_de_produtos, '.shelf-content-itens'
    # Detalhes da página de produto
    element :caminho_paginas, '.heading-title.fullWidth'
    element :descricao_produto, '.infoProduct'
    element :especificacao_produto, '.specs-product'


    def validarMenuLateral
        menu_lateral.visible?.should be true
    end

    def validarProdutos
        assert_text('Compra Unilever')
        lista_de_produtos.visible?.should be true
    end

    def validarDescricaoProdutos
        caminho_paginas.visible?.should be true
        descricao_produto.visible?.should be true
        especificacao_produto.visible?.should be true

    end

    def clicarPrimeiroProduto
        find('.shelf-item', match: :first).click
    end

    def navegarCategorias
        categoria_alimentos_bebidas.click
        wait_for_nome_categoria
        categoria_roupa_casa.click
        wait_for_nome_categoria
        categoria_cuidados_pessoais.click
        wait_for_nome_categoria
        categoria_alimentos_profissionais.click
        wait_for_nome_categoria
    end
end
