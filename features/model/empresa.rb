class Empresa
    #Classe para OOP de empresas e seus atributos
    attr_accessor :cnpj, :senha, :isento, :inscricaoEstadual, :nomeFantasia, :seuNome, :email, :emailDois, :senha, :repitaSenha, :telefone, :celular

    def self.new_empresa()
        empresa = allocate
        empresa.cnpj= (MASS['novo_cadastro']['cnpj'])
        empresa.senha= (MASS['novo_cadastro']['senha'])
        empresa.isento= (MASS['novo_cadastro']['isento'])
        empresa.inscricaoEstadual= (MASS['novo_cadastro']['inscricaoEstadual'])
        empresa.nomeFantasia= (MASS['novo_cadastro']['nomeFantasia'])
        empresa.seuNome= (MASS['novo_cadastro']['seuNome'])
        empresa.email= (MASS['novo_cadastro']['email'])
        empresa.email= (MASS['novo_cadastro']['emailDois'])
        empresa.senha= (MASS['novo_cadastro']['senha'])
        empresa.repitaSenha= (MASS['novo_cadastro']['repitaSenha'])
        empresa.telefone= (MASS['novo_cadastro']['telefone'])      
        empresa.celular= (MASS['novo_cadastro']['celular'])
        empresa
    end

    def self.nova_empresa(tipoMassa)
        empresa = allocate
        empresa.cnpj= (MASS[tipoMassa]['cnpj'])
        empresa.senha= (MASS[tipoMassa]['senha'])
        empresa.isento= (MASS[tipoMassa]['isento'])
        empresa.inscricaoEstadual= (MASS[tipoMassa]['inscricaoEstadual'])
        empresa.nomeFantasia= (MASS[tipoMassa]['nomeFantasia'])
        empresa.seuNome= (MASS[tipoMassa]['seuNome'])
        empresa.email= (MASS[tipoMassa]['email'])
        empresa.senha= (MASS[tipoMassa]['senha'])
        empresa.repitaSenha= (MASS[tipoMassa]['repitaSenha'])
        empresa.telefone= (MASS[tipoMassa]['telefone'])      
        empresa.celular= (MASS[tipoMassa]['celular'])
        empresa
    end

    def colocaValorCampo(campo, massaDois)
        case campo.upcase
            when "CNPJ"
            @cnpj= (MASS[massaDois]['cnpj'])
            when "SENHA"
            @senha= (MASS[massaDois]['senha'])
            when "ISENTO"
            @isento= (MASS[massaDois]['isento'])
            when "INSCRIÇÃO ESTADUAL"
            @inscricaoEstadual= (MASS[massaDois]['inscricaoEstadual'])
            when "NOME FANTASIA"
            @nomeFantasia= (MASS[massaDois]['nomeFantasia'])
            when "SEU NOME"
            @seuNome= (MASS[massaDois]['seuNome'])
            when "E-MAIL"
            @email= (MASS[massaDois]['email'])
            when "E-MAIL2DOIS"
            @email= (MASS[massaDois]['emailDois'])
            when "SENHA"
            @senha= (MASS[massaDois]['senha'])
            when "REPITA SENHA"
            @repitaSenha= (MASS[massaDois]['repitaSenha'])
            when "TELEFONE"
            @telefone= (MASS[massaDois]['telefone'])
            @celular= (MASS[massaDois]['celular'])    
        end
    end
end
