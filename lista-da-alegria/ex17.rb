puts("Exercício 17:")
puts("Insira o valor a ser sacado")
dinheiro = gets.to_i
q1=0; q2=0; q3=0; q4=0; q5=0; q6=0
while dinheiro >1
     q1 = dinheiro/100
     dinheiro = dinheiro - q1 * 100
     q2 = dinheiro/50
     dinheiro = dinheiro - q2 * 50
     q3 = dinheiro/20
     dinheiro = dinheiro - q3 * 20
     q4 = dinheiro/10
     dinheiro = dinheiro - q4 * 10
     q5 = dinheiro/5
     dinheiro = dinheiro - q5 * 5
     q6 = dinheiro/2
     dinheiro = dinheiro - q6 * 2
end

puts("#{q1} notas de 100,
#{q2} notas de 50,
#{q3} notas de 20,
#{q4} notas de 10,
#{q5} notas de 5,
#{q6} notas de 2,
#{dinheiro} resto")
