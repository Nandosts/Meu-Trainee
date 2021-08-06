puts("Desafio Ex5:")
puts("Quantas velas estão disponíveis?")
velas = gets.to_i
novas_velas = velas
#Aqui o nome teve que continuar como novas_velas, mas só serão as novas criadas com a parafina a partir da primeira divisão
horas_de_duração = velas
while novas_velas / 2 >= 1
    novas_velas = novas_velas / 2
    horas_de_duração += novas_velas
end

print ("\n\nReutilizando a parafina, é possivel ter velas acesas por #{horas_de_duração} horas.\n")
