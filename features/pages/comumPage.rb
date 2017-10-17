class Comum < SitePrism::Page
	 def irAteElemento(elemento)
       locY = elemento.native.location[1] - elemento.native.size[1]
       page.execute_script('window.scrollBy(0,'+locY.to_s+')')
    end
end
