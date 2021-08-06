puts("POO Exercício 4:")

materia = ['Cálculo_1', 'Cálculo_2', 'Cálculo_3', 'Física_1', 'Física_2', 'Estrutura_de_Dados', 
'Algoritmos_e_Programação_De_Computadores', 'Tecnicas_de_Programação_1', 'Sistemas_Digitais', 'Eletromagnetismo']
alunos = []

class Turma
    @@turma = []
    def initialize (materia, alunos)
        @materia = materia
        @alunos = alunos
        @@turma << self
    end
    attr_reader :materia, :alunos
    def self.turma
        @@turma
    end
    def total_alunos
        self.alunos.count
    end
    def numero_de_aprovados
        self.alunos.select{|dados| dados[:nota]>=5}.count
    end
end

aprovados_por_materia = {}
aprovados_total = 0
alunos_total = 0
puts("Digite o número de turmas que haverá na escola.")
numero_de_turmas = gets.to_i
for i in 0..numero_de_turmas -= 1
    alunos = []
    for j in 1..rand(5..20)
        alunos << {nota: rand(0.0..10.0).round(1), matrícula: rand(100000000..209999999).to_i} 
    end
    nome_materia = materia[rand(0..9)]
    Turma.new(nome_materia, alunos)
    if aprovados_por_materia.key?(nome_materia.to_sym)
        aprovados_por_materia[nome_materia.to_sym][:Aprovados] += Turma.turma[i].numero_de_aprovados
        aprovados_por_materia[nome_materia.to_sym][:Alunos] += Turma.turma[i].total_alunos
        aprovados_por_materia[nome_materia.to_sym][:Porcentagem_Aprovados] = aprovados_por_materia[nome_materia.to_sym][:Aprovados] *100/ aprovados_por_materia[nome_materia.to_sym][:Alunos]
    else
        aprovados_por_materia[nome_materia.to_sym] = {:Aprovados => Turma.turma[i].numero_de_aprovados, :Alunos => Turma.turma[i].total_alunos,
    :Porcentagem_Aprovados => Turma.turma[i].numero_de_aprovados * 100 / Turma.turma[i].total_alunos}
    end
    aprovados_total += Turma.turma[i].numero_de_aprovados.to_f
    alunos_total += Turma.turma[i].total_alunos.to_f
end
percentagem_total_aprovados = aprovados_total * 100 / alunos_total
puts("Porcentagem de aprovados e de #{percentagem_total_aprovados.round(1)}%")
p aprovados_por_materia
print "\n"
