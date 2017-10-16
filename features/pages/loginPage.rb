require 'capybara/dsl'

class Login < SitePrism::Page
    element :lnkLognCadastro, :xpath,'//*[@title="Login/Cadastre-se"]'
    element :jaCadastrado, :xpath,'//*[@id="registered"]'
    element :user, :xpath, '//*[@id="login"]/form/dl[1]/dd/input'
    element :password, :xpath, '//*[@id="login"]/form/dl[2]/dd/input'
    element :entryButton, :xpath, '//*[@id="login"]/form/p/input'
    element :forgetPassword, :css, '#login > form > p > a'
    element :newAccount, :css, '#login > p > a.link.new-account'
    element :errorPassAcc, :xpath,'//*[@id="login"]/form/dl[2]/dd/span'
    #Objetos do Esqueceu Senha
    element :lnkEsqueceuSenha, :xpath, "//*[@id='login']/form/p/a"
    element :txtCnpjEsqueceuSenha, :xpath, "//*[@id='forgetpassword']/dl/dd/input"
    element :btnSolicitarSenha, :xpath, "//*[@id='forgetpassword']/a"
    element :txtSucessoEsqueceuSenha, :xpath, "//*[@id='forgetpassword']/dl/dd/span"

    def acessLoginPopup
        registered.click
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
end