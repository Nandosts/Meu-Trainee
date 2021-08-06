puts("Desafio: Ex2:")
puts("Escreva um número para conferir se é ou não primo.")
numero = gets.to_i
divisores = []

for n in 1..numero
    if numero % n == 0
        divisores.push n
    end
end

if divisores.count == 2
    puts("O número é primo")
else 
    puts("O número não é primo e seus divisores são:")
    p divisores
end
