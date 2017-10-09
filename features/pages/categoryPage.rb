class Category < SitePrism::Page

    element :categoryFoodAndDrinks, :xpath, '//*[@id="home"]/nav/div/div/nav/ul/li[1]/a'
    element :lateralMenu, '.box-udas.box-marca.box-marca.pos-0'
    element :listOfProducts, :xpath, '//*[@id="category"]/div[2]/div[2]'

    def validateLateralMenu
        lateralMenu.visible?.should be true
    end

    def validateSubcategoryProducts
        assert_text('Compra Unilever')
        listOfProducts.visible?.should be true
    end
end
