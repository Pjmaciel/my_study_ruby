require_relative 'simple_bank_account'

class CheckingAccount < Bank_account

    def initialize(number, owner, saldo, limit)
        super(number,owner,saldo)
        @limit = limit 
    end

    def withdrawn(valor)
        if (@saldo + @limit) >= valor
            self.saldo -= valor
            puts " \nUsuario: #{@client.name} fez um saque de R$#{valor.round(2)}, novo saldo: R$#{@saldo.round(2)}"
        else
            "Nao foi possivel excecutar o saque"
        end
    end
    
end

pablo = Client.new("Pablo", "Maciel")

pablo_conta_corrente = CheckingAccount.new(124,pablo,200,500)

puts "#{pablo_conta_corrente.saldo}"

pablo_conta_corrente.withdrawn(300)




