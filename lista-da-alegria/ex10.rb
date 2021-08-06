puts("Exercício 10:")
puts("Escreva 10 números em sequência, separando apenas por um espaço.")

numeros = gets.split
resultado = 0

while numeros.count != 10
    puts("Quantidade de números inválido, digite novamente os 10 números.")
    numeros = gets.split
end

for any in numeros 
    if any.to_i >=10 and any.to_i <=20
        resultado +=1
    end
end
subtração = 10 - resultado
puts("#{resultado} estão no intervalo [10,20], #{subtração} fora.")