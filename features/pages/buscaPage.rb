class Busca < SitePrism::Page
    element :txtBarraDeBusca, :xpath, '//*[@id="small-searchterms"]'
    element :lblResultadoBusca, :xpath, '//*[@id="category"]/div[1]/div/h1/div/span[2]'
    element :lblBuscaInvalida, :xpath, '//*[@id="category"]/div[2]/div[2]/div'
    element :txtBarraBuscaPgInvalida, :xpath, '//*[@id="search-terms-not-found"]'
    element :btnCarregarMaisProdutos, :xpath, '//*[@id="category"]/div[3]/div[3]/a'
    element :lstProdutosExibidos, :xpath, '//*[@id="category"]/div[3]/div[2]'
    element :btnAbrirListaMultiplosProds, :xpath, '//*[@id="home"]/header/div[2]/div/div/div[2]/div[1]'
    element :lstBuscarMultiplosProds, :xpath, '//*[@id="multipleTextList"]'
    element :btnBuscarMultiplosProds, :xpath, '//*[@id="multipleSubmit"]'
    element :btnAbaMultiplosProds, :xpath, '//*[@id="ifcSearchTabs"]/div/div[1]/div/div[2]/div/button'

    def realizarBusca(produto)
        txtBarraDeBusca.set produto
        txtBarraDeBusca.native.send_keys(:return)
    end

    def validarCarregarMaisProdutos
        quantidadeAntes = lstProdutosExibidos.all('li').size 
        App.new.comum.irAteElemento(btnCarregarMaisProdutos)
        btnCarregarMaisProdutos.click
        btnCarregarMaisProdutos.should have_content("Carregar mais produtos")
        lstProdutosExibidos.all('li').size.should be >= quantidadeAntes
    end

    def buscarMultiplosProdutos(quantidadeProdutos)
        btnAbrirListaMultiplosProds.click
        produtosBusca = (MASS['nome_produto']['produto '+(1).to_s])
        for i in 2..quantidadeProdutos
            produtosBusca = "#{produtosBusca}"+', '+(MASS['nome_produto']['produto '+(i).to_s])
        end
        lstBuscarMultiplosProds.set produtosBusca
        btnBuscarMultiplosProds.click
    end
end