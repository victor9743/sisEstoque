module PessoajuridicasHelper
    require 'cpf_cnpj'

    # deixar o cnpj formatado
    def formatCnpj(cnpj)
        cnpj = CNPJ.new(cnpj)
        cnpj.formatted
    end

end
