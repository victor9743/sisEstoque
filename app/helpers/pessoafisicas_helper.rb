module PessoafisicasHelper
    require 'cpf_cnpj'

    # formatacao cpf
    def formatCpf(number)
        cpf = CPF.new(number)
        cpf.formatted
    end
end
