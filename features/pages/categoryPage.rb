class Category < SitePrism::Page

    element :categoryFoodAndDrinks, :xpath, '//*[@id="home"]/nav/div/div/nav/ul/li[1]/a'
    element :lateralMenu, '.box-udas.box-marca.box-marca.pos-0'
    element :listOfProducts, '.shelf-content-itens'
    element :productDescription, '.infoProduct'
    element :productSpecification, '.specs-product'
    element :breadcrumb, '.heading-title.fullWidth'

    def validateLateralMenu
        lateralMenu.visible?.should be true
    end

    def validateProducts
        assert_text('Compra Unilever')
        listOfProducts.visible?.should be true
    end

    def validateProductDescription
        productDescription.visible?.should be true
        productSpecification.visible?.should be true
        breadcrumb.visible?.should be true
    end

    def clickFirstProduct
        find('.shelf-item', match: :first).click
    end
end
