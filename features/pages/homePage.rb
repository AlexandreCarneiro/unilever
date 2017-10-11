class Home < SitePrism::Page
    element :logoImg, :xpath, '//*[@id="home"]/header/div[2]/div/h1/img'
    element :mainContent, '#main-content'
    element :botaoSair, :xpath, '//*[@class="logout"]'
    element :botaoLogin, :css, '//*[@title="Login/Cadastre-se"]'

    def validateHome
      assert_text('Compra Unilever')
      wait_for_logoImg
      logoImg.visible?.should be true
      mainContent.visible?.should be true
    end

    def doLogout
    	#page.should have_content(botaoSair)
      botaoSair.click
    end

    def validateLogout
    	botaoLogin.visible?.should be true
	end
     def doLogoutCleanUP
      #page.should have_content(botaoSair)
      begin  # "try" block
          botaoSair.click
      raise 'An error has occured.' # optionally: `raise Exception, "message"`
        #  puts 'I am after the raise.'  # won't be executed
      rescue # optionally: `rescue Exception => ex`
         # puts 'I am rescued.'
      ensure # will always get executed
         # puts 'Always gets executed.'
      end 
    end
end
