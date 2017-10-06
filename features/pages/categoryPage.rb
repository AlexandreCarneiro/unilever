class Category < SitePrism::Page

    element :lateralMenu, '.box-udas.box-marca.box-marca.pos-0'

    def validateLateralMenu
        lateralMenu.visible?.should be true
    end
end
