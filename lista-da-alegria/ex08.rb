puts("Exercício 8:")
puts("escreva um número")
def ePar(numero)
    if numero%2==0
        puts("#{numero} é par!")
    else
        puts("#{numero} é impar!")
    end
end

numero = gets.to_i
ePar numero