puts("Exercício 5:")
puts("Escreva sua menção")
nota = gets.to_f
case nota
when 0..0.9
    puts("SR")
when 1..2.9
    puts("II")
when 3..4.9
    puts("MI")
when 5..6.9
    puts("MM")
when 7..8.9
    puts("MS")
when 9..10
    puts("SS")
else
    puts("Indefinido")
end