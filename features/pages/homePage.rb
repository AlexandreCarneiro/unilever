class Home < SitePrism::Page
    element :logoImg, :xpath, '//*[@id="home"]/header/div[2]/div/h1/img'
    element :mainContent, '#main-content'
    element :botaoSair, :xpath, '//*[@class="logout"]'
    element :botaoLogin, :css, '//*[@title="Login/Cadastre-se"]'

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
