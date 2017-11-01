class Sserv < SitePrism::Page

    # Categorias
    element :lnkDadosDaEmpresa, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/ul/li[1]/ul/li[1]/a'
    element :lnkAlterarMeuEmail, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/ul/li[1]/ul/li[2]/a'
    element :lnkAlterarMinhaSenha, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/ul/li[1]/ul/li[3]/a'
    element :lnkMeuEndereco, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/ul/li[1]/ul/li[4]/a'

end
