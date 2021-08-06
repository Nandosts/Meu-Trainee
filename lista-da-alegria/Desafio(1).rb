restaurante = 
{"entrada" =>["salada", "patê", "tabua de queijos"], 
"principal" =>["bobó de camarão", "almôndegas", "estrogonofe", "rocambole"], 
"sobremesa" =>["pudim", "mousse", "sorvete", "pavê"]
}

selecionado = []

selecionado << restaurante["entrada"][rand 0..2]
selecionado << restaurante["principal"][rand 0..3]
selecionado << restaurante["sobremesa"][rand 0..3]
p selecionado