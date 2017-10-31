Dado(/^que eu esteja na home do site Unilever$/) do
   @app = App.new
   visit "https://#{'unilever'}:#{'Un!lyiam'}@#{'www-unilever-hcp.infracommerce.com.br'}"
  if not @app.login.first(:xpath,'//*[@id="welcome"]/a').nil?
  		@app.comum.irAteElemento(@app.login.btnVerCatalogo)
  		@app.login.btnVerCatalogo.click
  end
end

Dado('debug') do
	binding.pry 
end
