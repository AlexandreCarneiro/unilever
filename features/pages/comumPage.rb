class Comum < SitePrism::Page
	 def irAteElemento(elemento)
       loc = elemento.native.location
       locY = elemento.native.location[1] - elemento.native.size[1]
       page.execute_script('window.scrollBy(0,'+locY.to_s+')')
    end
end
