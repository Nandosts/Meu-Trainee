puts("Desafio Ex3:")

puts("Este programa representa a sequência de Fibonacci.
Digite um número inteiro maior que 0 e receba o número equivalente na sequência.")
repetições = gets.to_i
primeiro_número = 0
segundo_número = 1

if repetições <= 0
    puts ("Entrada Inválida")
else
    repetições.times do
        primeiro_número, segundo_número = segundo_número, primeiro_número + segundo_número
    end
end

puts("
O número equivalente a posição #{repetições} é:")
puts primeiro_número