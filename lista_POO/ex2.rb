puts("POO Exercício 3:")

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
    attr_writer :balance, :telephone
end

bank_account = BankAccount.new('tioWaliff', '321.456.789-99', '98989-8888', 23, 500, '00055-0', '123789')

puts("Digite sua opção:
1- Depositar
2- Sacar
3- Exibir saldo
4- Modificar Telefone
5- Exibir dados pessoais
6- Exibir dados da conta
7- Sair.")

escolha = gets.to_i
valor = 0
while escolha != 7
    if escolha == 1
        puts("Digite a quantidade que deseja depositar")
        valor = gets.to_f
        bank_account.balance = bank_account.balance + valor
        puts("Você depositou R$#{valor}")
    elsif escolha == 2
        puts("Digite a quantidade que deseja sacar")
        valor = gets.to_f
        bank_account.balance = bank_account.balance - valor
        puts("Você sacou R$#{valor}")
    elsif escolha == 3
        puts("Seu saldo é de: R$#{bank_account.balance}")
    elsif escolha == 4
        puts("Digite o novo número de telefone")
        numero = gets.chomp
        bank_account.telephone = numero
        puts("numero modificado com sucesso!")
    elsif escolha == 5 
        puts("Nome: #{bank_account.name}")
        puts("Cpf: #{bank_account.cpf}")
        puts("Telefone: #{bank_account.telephone}")
        puts("Idade: #{bank_account.age}")
    elsif escolha == 6
        puts("Conta bancária: #{bank_account.account}")
        puts("Senha: #{bank_account.password}")
    else
        puts ("Opção inválida, diigte novamente")
    end
    escolha = gets.to_i
end
puts("O banco dos trainees agradece, volte sempre.")