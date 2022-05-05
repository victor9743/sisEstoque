module PessoafisicasHelper
    require 'cpf_cnpj'

    # formatacao cpf
    def formatCpf(number)
        number = CPF.new(number)
        number.formatted
    end
end
