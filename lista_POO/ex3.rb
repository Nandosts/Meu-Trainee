puts("POO Exercício 3:")
class Person
    def initialize (name, cpf, telephone, age)
      @name = name
      @cpf = cpf
      @telephone = telephone
      @age = age
    end

    attr_accessor :name, :cpf, :telephone, :age
end

class BankAccount < Person
    def initialize (name, cpf, telephone, age, balance, account, password)
        super(name, cpf, telephone, age)
        @balance = balance
        @account = account
        @password = password
    end
  
    attr_accessor :name, :cpf, :telephone, :age, :balance, :account, :password
end
    
class SavingsAccount < Person
    def initialize (name, cpf, telephone, age, balance, account, password)
        super(name, cpf, telephone, age)
        @balance = balance
        @account = account
        @password = password
    end
  
    attr_accessor :name, :cpf, :telephone, :age, :balance, :account, :password

end
conta_corrente = BankAccount.new('null', 'null', 'null', 'null', 'null', 'null', 'null')
conta_poupança = SavingsAccount.new('null', 'null', 'null', 'null', 'null', 'null', 'null')
puts("Escolha sua opção:
1- Listar contas corrente
2- Listar contas poupança
3- Criar conta corrente
4- Criar conta poupança
5- Acessar conta
0- Finalizar transações.")

opção = 1
contas_corrente = []
contas_poupança = []

while opção != 0
    opção = gets.to_i
    if opção == 1
        if contas_corrente.count == 0
            puts("Não há contas corrente registradas, digite 3 para criar a sua.")
        else
            puts contas_corrente.map.with_index(1){|conta, indice| "#{indice}. #{conta.name} ~> Conta Corrente" }
        end
    elsif opção == 2
        if contas_poupança.count == 0
            puts("Não há contas poupança registradas, digite 4 para criar a sua.")
        else
            puts contas_poupança.map.with_index(1){|conta, indice| "#{indice}. #{conta.name} ~> Conta Poupança" }
        end
    elsif opção == 3
        puts("Insira seu nome") 
        nome = gets.chomp
        puts("Insira seu cpf")
        cpf = gets.chomp
        puts("Insira seu Telefone")
        telefone = gets.chomp
        puts("Insira sua idade")
        idade = gets.to_i
        puts("Insira a senha desejada")
        senha = gets.chomp
        contas_corrente.push(contaC = BankAccount.new(nome, cpf, telefone, idade, 0, rand(00000..99999), senha))
        puts("Conta criada com Sucesso.") 

    elsif opção == 4
        puts("Insira seu nome") 
        nome = gets.chomp
        puts("Insira seu cpf")
        cpf = gets.chomp
        puts("Insira seu Telefone")
        telefone = gets.chomp
        puts("Insira sua idade")
        idade = gets.to_i
        puts("Insira a senha desejada")
        senha = gets.chomp
        contas.poupança.push(contaP = SavingsAccount.new(nome, cpf, telefone, idade, 0, rand(00000..99999), senha))
        puts("Conta criada com Sucesso.") 
    elsif opção == 5
        puts("Você quer acessar uma conta corrente ou poupança?")
        puts("Conta corrente: Digite 1 \nConta poupança: Digite 2")
        conta = gets.to_i
        if conta == 1
            puts("Escolha a conta que deseja acessar:")
            puts contas_corrente.map.with_index(1){|conta, indice| "#{indice}. #{conta.name} ~> Conta Corrente" }
            conta = contas_corrente[gets.to_i - 1]
        elsif conta == 2
            puts("Escolha a conta que deseja acessar:")
            puts contas_poupança.map.with_index(1){|conta, indice| "#{indice}. #{conta.name} ~> Conta Poupança" }
            conta = contas_poupança[gets.to_i - 1]        
        end
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
                conta.balance = conta.balance + valor
                puts("Você depositou R$#{valor}")
            elsif escolha == 2
                puts("Digite a quantidade que deseja sacar")
                valor = gets.to_f
                conta.balance = conta.balance - valor
                puts("Você sacou R$#{valor}")
            elsif escolha == 3
                puts("Seu saldo é de: R$#{conta.balance}")
            elsif escolha == 4
                puts("Digite o novo número de telefone")
                numero = gets.chomp
                conta.telephone = numero
                puts("numero modificado com sucesso!")
            elsif escolha == 5 
                puts("Nome: #{conta.name}")
                puts("Cpf: #{conta.cpf}")
                puts("Telefone: #{conta.telephone}")
                puts("Idade: #{conta.age}")
            elsif escolha == 6
                puts("Conta bancária: #{conta.account}")
                puts("Senha: #{conta.password}")
            else
                puts ("Opção inválida, diigte novamente")
            end
            escolha = gets.to_i
        end
        puts("O banco dos trainees agradece, volte sempre.\n")
    elsif opção !=0
        puts ("Opção inválida, tente novamente")
    end
end