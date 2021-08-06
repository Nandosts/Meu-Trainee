restaurante = 
{"entrada" =>{"salada" => 4,"patê" => 3, "tabua de queijos" => 4.5}, 
"principal" =>{"bobó de camarão"=> 10, "almôndegas" => 6, "estrogonofe" => 8.5, "rocambole" => 7.5}, 
"sobremesa" =>{"pudim" => 3.5, "mousse" => 4, "sorvete" => 3, "pavê" => 5}
}
selecionado = []
preço,to_f = 0
selecionado << restaurante["entrada"].keys[rand 0..2]
if selecionado[0] == "salada"
    preço += 4
elsif selecionado[0] == "patê"
    preço += 3
else
    preço += 4.5
end
selecionado << restaurante["principal"].keys[rand 0..3]
if selecionado[1] == "bobó de camarão"
    preço += 10
elsif selecionado[1] == "almôndegas"
    preço += 6
elsif selecionado[1] == "estrogonofe"
    preço += 8.5
else
    preço += 7.5
end
selecionado << restaurante["sobremesa"].keys[rand 0..3]
if selecionado[2] == "pudim"
    preço += 3.5
elsif selecionado[2] == "mousse"
    preço += 4
elsif selecionado[2] == "sorvete"
    preço += 3
else
    preço += 5
end

p selecionado
puts("Total: R$#{preço}")