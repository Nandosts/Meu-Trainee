puts("Exercício 7:")
puts("Escreva um número inteiro entre 1 e 10")
numero = gets.to_i
while numero <1 or numero >10
puts("Escreva um número inteiro entre 1 e 10")
numero = gets.to_i
end
puts("#{numero * 1}, #{numero * 2}, #{numero * 3}, #{numero * 4}, #{numero * 5}, #{numero * 6}, #{numero * 7}, #{numero * 8}, #{numero * 9}, #{numero * 10}.")
