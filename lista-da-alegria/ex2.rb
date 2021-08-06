puts("Exercício 2:")
puts("Escreva uma frase qualquer.")
ascii = gets.ascii_only?
if ascii==true
  puts("Contém apenas caracteres ASCII")
else
  puts("Contém caracteres não ASCII")
end