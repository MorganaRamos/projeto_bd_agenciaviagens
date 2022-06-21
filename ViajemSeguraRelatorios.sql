USE CreateRLFinalAmbDados;

#Relatorio 1 atividades da agenda organizados por data e hora

SELECT Id_atividade,Atividade,Data_atividade,Horario_inicio
FROM AGENDA
GROUP BY Data_atividade,Horario_inicio;

#Relatorio 2 pontos turisticos sem acessibilidade 

SELECT Cod_pt, Nome
FROM PontosTuristicos
where Acessibilidade = FALSE;

#Relatorio 3 total de despesas por tipo e dividido por pessoas;

SELECT Id_despesa, Tipo_despesa, valor_despesa ,valor_despesa / Quantidade_pessoas
FROM Despesas 
INNER JOIN Viagem ON viagem_id_viagem=Id_viagem 
GROUP BY Tipo_despesa LIMIT 0, 1000;

#Relatorio 4 Relacionar cada viagem com seu custo total e quantidade de pessoas.

SELECT Id_viagem,Nome_viagem,valor_despesa,Quantidade_pessoas
FROM Viagem, DespesaS
WHERE viagem_id_viagem = Id_viagem
GROUP BY Id_viagem
