Quando(/^eu fazer o login com "([^"]*)"$/) do |tipo|
    #step 'acessar o catálogo'
    @app.login.acessLoginPopup
    @app.login.acessarJaCadastrado
    @app.login.doLogin(MASS[tipo]['cnpj'], MASS[tipo]['password'])
end

Quando(/^eu esquecer a senha com o cnpj "([^"]*)"$/) do |tipo|
	@app.login.lnkLognCadastro.click    
	@app.login.jaCadastrado.click
    @app.login.esqueceuSenha(MASS[tipo]['cnpj'])
end

Então (/^devo visualizar a mensagem de senha enviada com sucesso$/) do
	@app.login.txtSucessoEsqueceuSenha.text.upcase.should include(("Senha enviada com sucesso").upcase)
end

Então(/^não foi possivel realizar o login$/) do
	@app.login.validaLoginInvalido
end
