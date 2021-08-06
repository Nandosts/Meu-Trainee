puts("Desafio Ex4:")

puts("Digite as medidas (lados) de um triângulo para saber que tipo ele forma.")
puts("insira as 3 medidas:")
medidas = gets.split
for n in 0..2
    medidas[n] = medidas[n].to_i
end
p medidas

if medidas[0] < 1 or medidas[1] < 1 or medidas[2] < 1
    puts("Entrada inválida")
elsif medidas[0] + medidas[1] <= medidas[2] or medidas[0] + medidas[2] <= medidas[1] or medidas[1] + medidas[2] <= medidas[0]
    puts ("não é um triângulo")
elsif medidas[0] != medidas[1] and medidas[1] != medidas[2]
    puts("É um triângulo escaleno.")
elsif medidas[0] == medidas[1] and medidas[0] == medidas[2]
    puts("É um triângulo equilátero.")
else 
    puts("É um triângulo isósceles.")
end