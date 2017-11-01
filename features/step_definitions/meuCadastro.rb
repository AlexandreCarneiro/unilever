Quando(/^eu alterar as informações da empresa$/) do 
	@app.meuCadastro.preencherInfosCadastroSeuNome
end

Quando(/^eu clicar em Alterar Cadastro$/) do 
    #step 'acessar o catálogo'
    @app.comum.irAteElemento(@app.meuCadastro.btnAlterarCadastro)
    @app.meuCadastro.btnAlterarCadastro.click
end

Quando(/^eu alterar alterar as informações Email "([^"]*)", Senha "([^"]*)", Novo Email "([^"]*)", Confirmação de Novo Email "([^"]*)"$/) do |email,senha,novoEmail,novoEmailConf|
	@app.meuCadastro.preencherInfosAlterarEmail(email,senha,novoEmail,novoEmailConf)
end

Então(/^eu visualizarei a pagina de sucesso de alteração de informações$/) do 
     @app.meuCadastro.lblAlterarCadastroSucesso.text.upcase.should include(("sucesso").upcase)
end
