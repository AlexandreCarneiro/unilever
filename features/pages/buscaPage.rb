class Busca < SitePrism::Page
    element :txtBarraDeBusca, :xpath, '//*[@id="small-searchterms"]'
    element :lblResultadoBusca, :xpath, '//*[@id="home-search"]/main/div[2]/div/h1/div/span[2]'
    element :lblBuscaInvalida, :xpath, '//*[@id="category"]/div[2]/div[2]/div'
    element :txtBarraBuscaPgInvalida, :xpath, '//*[@id="search-terms-not-found"]'
    element :btnCarregarMaisProdutos, :xpath, '//*[@id="category"]/div[2]/div[3]/a'
    element :lstProdutosExibidos, :xpath, '//*[@id="category"]/div[2]/div[2]/ul'

    def realizarBusca(produto)
        txtBarraDeBusca.set produto
        txtBarraDeBusca.native.send_keys(:return)
    end

    def validarCarregarMaisProdutos
        list = Array.new 
        list = lstProdutosExibidos.all('li')
        quantidadeAntes = list.size 
        App.new.comum.irAteElemento(btnCarregarMaisProdutos)
        btnCarregarMaisProdutos.click
        sleep(1)
        list = lstProdutosExibidos.all('li')
        quantidadeDepois = list.size
        quantidadeAntes < quantidadeDepois
    end
end