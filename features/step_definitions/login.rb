Quando(/^eu fazer o login com "([^"]*)"$/) do |tipo|
    @app.login.registered.click
    @app.login.doLogin(MASS[tipo]['user'], MASS[tipo]['password'])
end

Então(/^não foi possivel realizar o login$/) do
	@app.login.validaLoginInvalido
end