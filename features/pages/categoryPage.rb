class Category < SitePrism::Page

    # Categories
    element :foodAndDrinksCategory, '.nav-item.alimentos-e-bebidas.has-submenu'
    element :clothesAndHomeCategory, '.nav-item.cuidados-com-a-roupa-e-casa.has-submenu'
    element :personalCaresCategory, '.nav-item.cuidados-pessoais.has-submenu'
    element :promotionCategory, '.nav-item.static.promocoes'
    element :suggestionListCategory, :xpath, '//*[@id="home-depto"]/nav/div/div/nav/ul/li[5]/a'
    element :professionalFoodsCategory, '.nav-item.alimentos-profissionais'
    element :mainMenu, :xpath, '//*[@id="home-depto"]/nav'
    # Inside of a category
    element :nameOfCategory, '.level-name'
    element :lateralMenu, '.box-udas.box-marca.box-marca.pos-0'
    element :listOfProducts, '.shelf-content-itens'
    # Details of product page
    element :breadcrumb, '.heading-title.fullWidth'
    element :productDescription, '.infoProduct'
    element :productSpecification, '.specs-product'


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

    def navigateOnCategories
        foodAndDrinksCategory.click
        wait_for_nameOfCategory
        clothesAndHomeCategory.click
        wait_for_nameOfCategory
        personalCaresCategory.click
        wait_for_nameOfCategory
        promotionCategory.click
        wait_for_nameOfCategory
        suggestionListCategory.click
        wait_for_nameOfCategory
        professionalFoodsCategory.click
        wait_for_nameOfCategory
    end
end
