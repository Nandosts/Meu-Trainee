puts ("Desafio Ex6:")

puts("Investimento:")
investimento = gets.to_f.round(2)

puts("Rendimento Mensal:")
rendimento_mensal = 1 + gets.to_f

puts("Valor conta de luz:")
conta_de_luz = gets.to_f.round(2)

puts("Digite o prazo de pagamento em meses:")
prazo = gets.to_i

taxa = 1.01

n = 0

lucro = investimento * (rendimento_mensal ** n) - investimento
conta_com_juros = conta_de_luz * (taxa ** n)
#Como esses 2 valores acima serão substituidos logo abaixo, não dei importância aos numeros iniciais.

if investimento > 0  and conta_de_luz >= 0
    while conta_com_juros - lucro > 0
        if n < prazo
            n += 1
            lucro = (investimento * (rendimento_mensal ** n) - investimento).round(2)
            conta_com_juros = (conta_de_luz * (taxa ** n))
        else
            puts("A conta não pode ser paga no prazo estipulado")
            conta_com_juros = 0
            lucro = 1
            n = 0
        end
    end
    if n!=0
    puts("A conta de Luz pode ser paga em #{n} meses.")
    end
else
    puts ("Entrada inválida")
end
