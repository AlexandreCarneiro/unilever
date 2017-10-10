class Home < SitePrism::Page
    element :logoImg, :xpath, '//*[@id="home"]/header/div[2]/div/h1/img'
    element :mainContent, '#main-content'
    element :botaoSair, :xpath, '//*[@class="logout"]'
    element :botaoLogin, :css, '#home > header > div.top-header.fullWidth > div > div.login-option > a.login'

    def validateHome
      assert_text('Compra Unilever')
      wait_for_logoImg
      logoImg.visible?.should be true
      mainContent.visible?.should be true
    end

    def doLogout
    	page.should have_content(botaoSair)
    	botaoSair.click
    end

    def validateLogout
    	botaoLogin.exist?.should be true
	end
end