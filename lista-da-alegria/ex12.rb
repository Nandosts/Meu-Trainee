puts("Exercício 12:")
ano = 1901
anosXX = []
anosXX_bi = []

while ano.to_i >= 1901 and ano.to_i <= 2000
    if ano%4==0
        anosXX_bi.push ano
        ano +=1
    else
        anosXX.push ano
        ano +=1
    end
end

p ("Anos não bissextos do século XX: #{anosXX}")
p ("Anos bissextos do sécuko XX: #{anosXX_bi}")