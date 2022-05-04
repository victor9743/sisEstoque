module ApplicationHelper
    require 'money'
    # Todos os helpers utilizados em toda aplicação
    def formatarData(data)
        data.strftime("%d/%m/%Y")
    end

    def formatarValor(valor)
        Money.from_cents(valor, "BRL").format
    end
end
