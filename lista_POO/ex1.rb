puts("POO Exercício 1:")

class BankAccount
    def initialize  (name, cpf, telephone, age, balance, account, password)
      @name = name
      @cpf = cpf
      @telephone = telephone
      @age = age
      @balance = balance
      @account = account
      @password = password
    end

    attr_reader :name, :cpf, :telephone, :age, :balance, :account, :password
    
    def depositMoney(value)
        @balance = @balance + value
        return {new_balance: @balance, deposited_value: value}
      end

    def takeMoney(value)
      @balance = @balance - value
      return {new_balance: @balance, taken_value: value}
    end
    
    def showBalance
       return {balance: @balance}
    end

    def modifyTelephone(number)
        @telephone = number
    end
  
    def showOwnerInfos
        return {name: @name, cpf: @cpf, telephone: @telephone, age: @age}
    end

    def showAccountInfos
        return {account: @account, password: @password}
    end
end

bank_account = BankAccount.new('tioEstevan', '123.456.789-10', '98989-8888', 21, 0, '00000-0', '123456')
puts bank_account.depositMoney(200)
puts bank_account.takeMoney(250)
puts bank_account.showBalance
puts bank_account.modifyTelephone('99999-9999')
puts bank_account.showOwnerInfos
puts bank_account.showAccountInfos
