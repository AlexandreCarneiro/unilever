class MeuCadastro < SitePrism::Page

    # Dados da Empresa
    element :btnAlterarCadastro, :xpath, '//*[@id="personalForm:j_id58"]'
    element :txtNomeContato, :xpath, '//*[@id="personalForm:representative"]'
    element :lblAlterarCadastroSucesso, :css, '#sserv > main > div.centerAll > div > div > div > div > div.register > p'
    element :btnVoltarConfirmacao, :xpath, '//*[@id="sserv"]/main/div[2]/div/div/div/div/div[2]/a'
    # Alterar Email
    element :txtEmailAtual, :xpath, '//*[@id="mail_change:changeEmail"]'
    element :txtSenhaEmail, :xpath, '//*[@id="mail_change:changePass"]'
    element :txtNovoEmail, :xpath, '//*[@id="mail_change:changeNewEmail"]'
    element :txtNovoEmailConfirmacao, :xpath, '//*[@id="mail_change:changeConfEmail"]'
    element :btnAlterarEmail, :xpath, '//*[@id="mail_change:j_id49"]'

    def preencherInfosCadastroSeuNome
        txtNomeContato.set (Empresa.new_empresa.seuNome)+(rand(999999).to_s)
    end

    def preencherInfosAlterarEmail(emailMassa,senhaMassa,novoEmailMassa,novoEmailConfMassa)
        if email != 'vazio'
         txtEmailAtual.set Empresa.nova_empresa(emailMassa).email
        end
            txtSenhaEmail.set Empresa.nova_empresa(senhaMassa).senha
            txtNovoEmail.set Empresa.nova_empresa(novoEmailMassa).email2
            txtNovoEmailConfirmacao.set Empresa.nova_empresa(novoEmailConfMassa).email2
    end
end