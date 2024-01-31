class Bank_account

    attr_reader :numero
    attr_accessor :numero :saldo

    def initialize(numero, titular, saldo)
      @numero = numero
      @titular = titular
      @saldo = saldo
    end

    def withdrawn(valor)
        validate_value = validate_transation(valor)
        if validate_value > @saldo
            Puts "Não é possivel fazer saques maiores que o valor disponivel na conta"
        else
            @saldo -= validate_value
            puts " Usuario: #{titular} fez um saque de R$#{valor.round(2)}, novo saldo: R$#{saldo.round(2)}"
        end
    end

    def desposit(valor)
        validate_value = validate_transation(valor)
        saldo += validate_value
        puts " Usuario: #{titular} fez um deposito de R$#{valor.round(2)}, novo saldo: R$#{saldo.round(2)}"
    
    
    def pix(number,valor)
        account_destiny = number
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

pedro = Bank_account.new(111,"Pedro", 100)
pedro.withdrawn(20)

puts "--------------------------------------"

benicio = Bank_account.new(222,"Benicio", 50)

