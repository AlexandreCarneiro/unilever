Quando (/^eu criar um novo cadastro com o cnpj "([^"]*)"$/) do |tipo|
	@app.login.acessLoginPopup
	@app.login.cadastroNovo(MASS[tipo]['cnpj'])
end

Quando (/^eu validar os dados do cadastro novo$/) do
	@app.login.validarDadosCadastroNovo
end

Quando(/^eu cadastrar um cliente com as informações "([^"]*)"$/) do |tipo|
	@empresaNova = Empresa.nova_empresa(tipo)
	@app.login.inserirDadosCadastroNovo(@empresaNova)
end

Quando(/^eu cadastrar um cliente com as informações "([^"]*)" mas com o campo "([^"]*)" com informações da "([^"]*)"$/) do |massa, campo, massaDois|
	@empresaNova = Empresa.nova_empresa(massa)
	@empresaNova.colocaValorCampo(campo,massaDois)
	@app.login.inserirDadosCadastroNovo(@empresaNova)
end


Quando (/^eu clicar em novo cadastro$/) do
	@app.login.btnConfirmarNovoCadastro.click
end

Então (/^devo visualizar sucesso na criação do usuario$/) do
	@app.login.lblSucessoNovoCadastro.text.include? "sucesso"
end


Então (/^devo visualizar critica no campo "([^"]*)"$/) do |tipo|
	@app.login.validarCriticaCampo(tipo)
end

Então (/^devo visualizar mensagem de CNPJ invalido$/) do
	@app.login.lblFalhaCNPJNovoCadastro.text.include? "informe um CNPJ válido"
end

Então (/^devo visualizar campos vazios com critica$/) do
	page.all(:xpath,'//span[@class="msg-error"]').count.should be >= 4
end