Dado(/^que eu esteja na home do site Unilever$/) do
   @app = App.new
   visit "https://#{'unilever'}:#{'Un!lyiam'}@#{'www-unilever-hcp.infracommerce.com.br'}"
   if @app.login.btnVerCatalogo.visible?
   		@app.comum.irAteElemento(@app.login.btnVerCatalogo)
   		@app.login.btnVerCatalogo.click
   end
end


