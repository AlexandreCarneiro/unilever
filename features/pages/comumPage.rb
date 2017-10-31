class Comum < SitePrism::Page
	 def irAteElemento(elemento)
       locY = (elemento.native.location[1] - (page.driver.browser.manage.window.size[1]/2))
       page.execute_script('window.scrollBy(0,'+locY.to_s+')')
    end
end
