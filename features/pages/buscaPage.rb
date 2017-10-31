class Busca < SitePrism::Page
    element :txtBarraDeBusca, :xpath, '//*[@id="small-searchterms"]' #mover para homePage.rb
    element :lblResultadoBusca, :xpath, '//*[@id="category"]/div[1]/div/h1/div/span[2]'
    element :lblBuscaInvalida, :xpath, '//*[@id="category"]/div[2]/div[2]/div'
    element :txtBarraBuscaPgInvalida, :xpath, '//*[@id="search-terms-not-found"]'
    element :btnCarregarMaisProdutos, :css, '#category > div.shelf > div.shelf-footer > a'
    element :lstProdutosExibidos, :xpath, '//*[@id="category"]/div[3]/div[2]'
    element :btnAbrirListaMultiplosProds, :xpath, '//*[@id="home"]/header/div[2]/div/div/div[2]/div[1]' #mover para homePage.rb
    element :lstBuscarMultiplosProds, :xpath, '//*[@id="multipleTextList"]' #mover para homePage.rb
    element :btnBuscarMultiplosProds, :xpath, '//*[@id="multipleSubmit"]' #mover para homePage.rb
    element :btnAbaMultiplosProds, :xpath, '//*[@id="ifcSearchTabs"]/div/div[1]/div/div[1]/div/button' #mover para homePage.rb

    
    def realizarBusca(produto) #mover para homePage.rb
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

    def buscarMultiplosProdutos(quantidadeProdutos)  #mover para homePage.rb
        btnAbrirListaMultiplosProds.click
        produtosBusca = (MASS['nome_produto']['produto '+(1).to_s])
        for i in 2..quantidadeProdutos
            produtosBusca = "#{produtosBusca}"+', '+(MASS['nome_produto']['produto '+(i).to_s])
        end
        lstBuscarMultiplosProds.set produtosBusca
        btnBuscarMultiplosProds.click
    end

end