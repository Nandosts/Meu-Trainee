puts("Exercício 16:")
elementos = ["A", "T", "C", "G"]
fita1 = []

puts("Primeira Fita:")
for i in 0..9
    fita1 << elementos[rand 0..3]
    print ("[#{fita1[i]}] ")
    if fita1[i] == "A"
        fita1[i] = "[A, T]" 
    elsif fita1[i] == "T"
        fita1[i] = "[T, A]"
    elsif fita1[i] == "C"
        fita1[i] = "[C, G]"
    elsif fita1[i] == "G"
        fita1[i] = "[G, C]"
    end
end
puts("\nDNA:")
puts fita1