class Home < SitePrism::Page
    element :logoImg, :xpath, '//*[@id="home"]/header/div[2]/div/h1/img'
    element :mainContent, '#main-content'

    def validateHome
      assert_text('Compra Unilever')
      wait_for_logoImg
      logoImg.visible?.should be true
      mainContent.visible?.should be true
    end
end
