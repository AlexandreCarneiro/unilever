class Home < SitePrism::Page
    element :logoImg, :xpath, '//*[@id="home"]/header/div[2]/div/h1/img'
    element :mainContent, '#main-content'
    element :botaoSair, :xpath, '//*[@class="logout"]'
    element :botaoLogin, :xpath, '//*[@title="Login/Cadastre-se"]'
    #objetos de rodape
    element :lnkRodapeQuemSomos, :css, 'footer > div.centerAll > ul > li.nav.about > ul > li:nth-child(1) > a'
    element :lnkRodapeNossosParceiros, :css, 'footer > div.centerAll > ul > li.nav.about > ul > li:nth-child(2) > a'
    element :lnkRodapeRegrasParaUso, :css, 'footer > div.centerAll > ul > li.nav.about > ul > li:nth-child(3) > a'
    element :lnkRodapePoliticaPrivacidade, :css, 'footer > div.centerAll > ul > li.nav.about > ul > li:nth-child(4) > a'
    element :lnkRodapeCentralAtendimento, :css, 'footer > div.centerAll > ul > li.nav.about > ul > li:nth-child(5) > a'
    element :lnkRodapeComoComprar, :css, 'footer > div.centerAll > ul > li.nav.how-to-buy > ul > li:nth-child(1) > a'
    element :lnkRodapePrimeiroAcesso, :css, 'footer > div.centerAll > ul > li.nav.how-to-buy > ul > li:nth-child(2) > a'
    element :lnkRodapePosConclusaoPrim, :css, 'footer > div.centerAll > ul > li.nav.how-to-buy > ul > li:nth-child(3) > a'
    element :lnkRodapeGarantiaProduto, :css, 'footer > div.centerAll > ul > li.nav.how-to-buy > ul > li:nth-child(4) > a'
    element :lnkRodapeTrocasDevolucoes, :css, 'footer > div.centerAll > ul > li.nav.how-to-buy > ul > li:nth-child(5) > a'
    element :lnkRodapePlanogramas, :css, 'footer > div.centerAll > ul > li.nav.sale-more > ul:nth-child(2) > li:nth-child(1) > a'
    element :lnkRodapeDicasParaNegocio, :css, 'footer > div.centerAll > ul > li.nav.sale-more > ul:nth-child(2) > li:nth-child(2) > a'





    def validarHome
      assert_text('Compra Unilever')
      wait_for_logoImg
      logoImg.visible?.should be true
      mainContent.visible?.should be true
    end

    def logout
      botaoSair.click
    end

    def validarLogout
      botaoLogin.visible?.should be true
    end
    
    def logoutCleanUP
      begin
       botaoSair.click
       raise 'An error has occured.' # optionally: `raise Exception, "message"`
       rescue
       ensure
      end
    end
end
