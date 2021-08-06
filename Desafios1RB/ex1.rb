puts("Desafio: Ex1")
puts("Digite um número para descobrir seu fatorial. ")
numero = gets.to_i
resultado = 0

def imprimir(numero)
    while numero >=1 and numero <11
        if numero == 1
            puts("1")
            numero -=1
        elsif numero <=10 and numero > 0
        print("#{numero}!=")
            while numero > 1
                 print("#{numero}*")
                 numero -=1
            end
        end
    end
end 

imprimir(numero)

def fatorial(numero)
    if numero > 1
        return numero * fatorial(numero-1)
    else
        return 1
    end
end

puts fatorial(numero)