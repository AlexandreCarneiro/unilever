class Categoria < SitePrism::Page

    # Categories
    element :foodAndDrinksCategoria, '.nav-item.alimentos-e-bebidas.has-submenu'
    element :clothesAndHomeCategoria, '.nav-item.cuidados-com-a-roupa-e-casa.has-submenu'
    element :personalCaresCategoria, '.nav-item.cuidados-pessoais.has-submenu'
    element :promotionCategoria, '.nav-item.static.promocoes'
    element :suggestionListCategoria, :xpath, '//*[@id="home-depto"]/nav/div/div/nav/ul/li[5]/a'
    element :professionalFoodsCategoria, '.nav-item.alimentos-profissionais'
    element :mainMenu, :xpath, '//*[@id="home-depto"]/nav'
    # Inside of a Categoria
    element :nameOfCategoria, '.level-name'
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
        foodAndDrinksCategoria.click
        wait_for_nameOfCategoria
        clothesAndHomeCategoria.click
        wait_for_nameOfCategoria
        personalCaresCategoria.click
        wait_for_nameOfCategoria
        promotionCategoria.click
        wait_for_nameOfCategoria
        suggestionListCategoria.click
        wait_for_nameOfCategoria
        professionalFoodsCategoria.click
        wait_for_nameOfCategoria
    end
end
