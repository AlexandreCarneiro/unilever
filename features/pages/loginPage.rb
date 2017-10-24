class Login < SitePrism::Page
    element :lnkLognCadastro, :xpath,'//*[@title="Login/Cadastre-se"]'
    element :jaCadastrado, :xpath,'//*[@id="registered"]'
    element :user, :xpath, '//*[@id="login"]/form/dl[1]/dd/input'
    element :password, :xpath, '//*[@id="login"]/form/dl[2]/dd/input'
    element :entryButton, :xpath, '//*[@id="login"]/form/p/input'
    element :forgetPassword, :css, '#login > form > p > a'
    element :newAccount, :css, '#login > p > a.link.new-account'
    element :errorPassAcc, :xpath,'//*[@id="login"]/form/dl[2]/dd/span'
    element :btnVerCatalogo, :xpath, '//*[@id="welcome"]/a'
    #Objetos do Esqueceu Senha
    element :lnkEsqueceuSenha, :xpath, '//*[@id="login"]/form/p/a'
    element :txtCnpjEsqueceuSenha, :xpath, '//*[@id="forgetpassword"]/dl/dd/input'
    element :btnSolicitarSenha, :xpath, '//*[@id="forgetpassword"]/a'
    element :txtSucessoEsqueceuSenha, :xpath, '//*[@id="forgetpassword"]/dl/dd/span'
    #Objetos do Cadastro Novo
    element :btnNovoCadastro, :xpath, '//*[@id="new-account"]'
    element :txtCNPJNovoCadastro, :xpath, '//*[@id="registerA"]/form/dl/dd/input'
    element :btnProximoNovoCadastro, :xpath, '//*[@id="registerA"]/form/p/input[1]'
    element :lblCNPJInvalidoNvCadastro, :xpath, '//*[@id="registerA"]/form/dl/dd/span'
    element :lblCNPJAguardeNovoCadastro, :xpath, '//*[@id="registerA"]/form/dl/dd/p'
    element :lblNomeFantasiaNovoCadastro, :xpath, '//*[@id="registerB"]/form/dl[2]/dd/p[1]/span[2]'
    element :lblDadosValidosNovoCadastro, :xpath, '//*[@id="registerB"]/form/dl[2]/dt'
    element :lblRazaoSocialNovoCadastro, :xpath, '//*[@id="registerB"]/form/dl[2]/dd/p[2]/span[2]'
    element :lblEnderecoNovoCadastro, :xpath, '//*[@id="registerB"]/form/dl[2]/dd/p[3]/span[2]'
    element :btnProsseguirNovoCadastro, :xpath, '//*[@id="registerB"]/form/p/input[1]'
    element :lblStepAtualNovoCadastro, :xpath, '//*[@id="registerC"]/nav/p[2]'
    element :txtInscricaoEstadualNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[1]/dl[1]/dd/input'
    element :cbIsentoNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[1]/dl[2]/dd/input'
    @@xPathVarTemp = '//*[@id="registerC"]/form/dl[1]/dd/input'
    element :txtNomeFantasiaNovoCadastro, :xpath, @@xPathVarTemp
    element :txtSeuNomeNovoCadastro, :xpath, '//*[@id="registerC"]/form/dl[2]/dd/input'
    element :txtEmailNovoCadastro, :xpath, '//*[@id="registerC"]/form/dl[3]/dd/input'
    element :txtSenhaNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[2]/dl[1]/dd/input'
    element :txtRepitaSenhaNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[2]/dl[2]/dd/input'
    element :txtTelefoneNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[3]/dl[1]/dd/input'
    element :txtCelularNovoCadastro, :xpath, '//*[@id="registerC"]/form/div[3]/dl[2]/dd/input'
    element :btnConfirmarNovoCadastro, :xpath, '//*[@id="registerC"]/form/p/input[1]'
    element :lblSucessoNovoCadastro, :xpath, '//*[@id="success"]/h2'
    element :lblFalhaCNPJNovoCadastro, :xpath, '//*[@id="registerA"]/form/dl/dd/span'
    @@app = App.new

    def acessLoginPopup
        lnkLognCadastro.click
    end

    def acessarJaCadastrado
        jaCadastrado.click
    end

    def doLogin(cnpj, pass)
        user.set cnpj
        password.set pass
        entryButton.click
    end

    def validaLoginInvalido()
        puts errorPassAcc.text
        errorPassAcc.text.should be == "Dados incorretos, por favor verifique"
    end

    def esqueceuSenha(cnpj)
        @@app.comum.irAteElemento(lnkEsqueceuSenha)
        lnkEsqueceuSenha.click
        txtCnpjEsqueceuSenha.set cnpj
        btnSolicitarSenha.click
        txtSucessoEsqueceuSenha.text.should have_content("Senha enviada com sucesso")
    end

    def cadastroNovo(cnpj)
        btnNovoCadastro.click 
        txtCNPJNovoCadastro.set cnpj
        btnProximoNovoCadastro.click
        sleep(3)
    end

    def validarDadosCadastroNovo()
        wait_for_lblRazaoSocialNovoCadastro
        lblRazaoSocialNovoCadastro.text.should_not == ""
        lblEnderecoNovoCadastro.text.should_not == ""
        @@app.comum.irAteElemento(btnProsseguirNovoCadastro)
        btnProsseguirNovoCadastro.click
    end

    def inserirDadosCadastroNovo(empresa)
        if empresa.isento == false
            txtInscricaoEstadualNovoCadastro.set empresa.inscricaoEstadual
        else
            cbIsentoNovoCadastro.set empresa.isento
        end
        if page.has_xpath? (@@xPathVarTemp)
            txtNomeFantasiaNovoCadastro.set empresa.nomeFantasia
        end
        txtSeuNomeNovoCadastro.set empresa.seuNome
        txtEmailNovoCadastro.set empresa.email
        txtSenhaNovoCadastro.set empresa.senha
        txtRepitaSenhaNovoCadastro.set empresa.repitaSenha
        txtTelefoneNovoCadastro.set empresa.telefone
        txtCelularNovoCadastro.set empresa.celular
    end
    def validarCriticaCampo(campo)
        first(:xpath, '//span[@class="msg-error"]').text.upcase.should include(campo.upcase)
    end

end
