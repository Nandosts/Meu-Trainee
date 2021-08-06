puts("Exercício 9:")
puts("Escreva cinco números.")

numero = gets.to_i
numero2 = gets.to_i
numero3 = gets.to_i
numero4 = gets.to_i
numero5 = gets.to_i

par = 0

def ePar?(numero)
    return numero%2==0
end

if ePar?(numero)
    par +=1
end
if ePar?(numero2)
    par +=1
end
if ePar?(numero3)
    par +=1
end
if ePar?(numero4)
    par +=1
end
if ePar?(numero5)
    par +=1
end
impar = 5-par
puts("contém #{par} numeros par e #{impar} impar.")

