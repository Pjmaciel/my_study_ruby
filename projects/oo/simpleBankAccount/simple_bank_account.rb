require_relative 'client'

class Bank_account

    attr_reader :numero
    attr_accessor :client, :saldo

    def initialize(numero, owner, saldo)
        @numero = numero
        @client = owner
        @saldo = saldo
    end

    def withdrawn(valor)
        validate_value = validate_transation(valor)
        if validate_value > @saldo
            puts "\nNão é possivel fazer saques maiores que o valor disponivel na conta"
            return 0
        else
            @saldo -= validate_value
            puts " \nUsuario: #{@client.name} fez um saque de R$#{valor.round(2)}, novo saldo: R$#{@saldo.round(2)}"
        end
    end

    def desposit(valor)
        validate_value = validate_transation(valor)
        @saldo += validate_value
        puts " \nUsuario: #{@client.name} fez um deposito de R$#{valor.round(2)}, novo saldo: R$#{@saldo.round(2)}"
    end
    
    
    def pix(account_destiny,valor)
        withdrawn(valor)
        account_destiny.desposit(valor)
    end
    
        private

    def validate_transation(valor)
        if valor <= 0
            puts "\n Não é possivel fazer transaçoes com numeros negativos"
            return 0
        else
            return valor
        end
    end
end



