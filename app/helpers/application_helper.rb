module ApplicationHelper
    # Todos os helpers utilizados em toda aplicação
    #gems utilizadas
    require 'money'
    
    # formata a hora para dia/mês/ano
    def formatarData(data)
        data.strftime("%d/%m/%Y")
    end

    #formata o valor monetário para BRL
    def formatarValor(valor)
        Money.from_cents(valor, "BRL").format
    end
end
