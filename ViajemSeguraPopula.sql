USE CreateRLFinalAmbDados;

INSERT INTO Viagem (Id_viagem,Nome_viagem,Inicio_ferias,Fim_ferias,Quantidade_pessoas)
VALUES 
(1,"FeriasJunhoNoronha2020","2020-06-10","2020-06-30","4"),
(2,"FeriasJaneiroSalvador2021","2021-01-10","2021-02-25","5"),
(3,"FeriasJunhoSaoluis2021","2021-06-05","2022-06-25","6"),
(4,"FeriasJunhoRiodejaneiro2022","2022-06-10","2022-06-30","3");

INSERT INTO Cidade (id_cidade,Nome_cidade,Estado,Pais)
VALUES
(1,"Noronha","Pernambuco","Brasil"),
(2,"Salvador","Bahia","Brasil"),
(3,"Sao Luis","Maranhao","Brasil"),
(4,"Rio de Janeiro","Rio de Janeiro","Brasil"); 

INSERT INTO Pessoa (Id_pessoa,Nome,Cidade,Rua,Numero,Complemento,Bairro,CEP,Data_Nascimento,Genero,NecessidadeEspecial)
VALUES
(1,"Lucas de Moura","Travessa João Ferraz","Fortaleza","1589","Casa","Fátima","60040-531","1932-11-15","Masculino","Não possui"),
(2,"Guilherme Farias Nogueira","Caucaia","Rua C","349","Apto 101b","Mestre Antônio","61624-190","1933-12-31","Masculino","Deficiente visual"),
(3,"Moana Malaquias Cruz","Crato","Vila Naiza","242","Casa","Rodolfo Teófilo","60430-630","1957-12-11","Feminino","Não possui"),
(4,"Rosinalda Laporte Amaral","Fortaleza","Rua Inês Brasil","026","Apto 703","Boa Vista","60867-540","1991-05-25","Feminino","Deficiente auditivo"),
(5,"Joan Garbelini Texeira","Maracanaú","Rua Vereador Otoni Lopes de Oliveira","1589","Casa","Vila União","60410-725","1989-04-08","Masculino","Não possui"),
(6,"Maurício Malaquias Folly","Quixadá","Rua José de Queiroz Pessoa","820","Casa","Papicu","60176-280","1942-08-21","Masculino","Não possui"),
(7,"Rosani Consendey Dutra","Itapipoca","Rua José de Queiroz Pessoa","691","Casa","São João do Tauape","60131-090","2014-05-20","Feminino","Não possui");

INSERT INTO Telefones (id_telefone,Telefone,Pessoa_Id_pessoa)
VALUES
(1,"(88) 98991-8442",1),
(2,"(88) 98544-7970",2),
(3,"(88) 98765-4796",3),
(4,"(85) 98481-6885",4),
(5,"(85) 98714-8443",5),
(6,"(85) 9852-5178",6),
(7,"(85) 98655-9739",7);

INSERT INTO Email (Id_email,email_pessoa,Pessoa_Id_pessoa)
VALUES
(1,"lucasmoura@geradornv.com.br",1),
(2,"guilhermenogueira@geradornv.com.br",2),
(3,"moanamalaquias@geradornv.com.br",3),
(4,"rosinaldaamaral@geradornv.com.br",4),
(5,"joantexeira@geradornv.com.br",5),
(6,"mauriciofolly@geradornv.com.br",6),
(7,"rosanidutra@geradornv.com.br",7);

INSERT INTO Despesas (Id_despesa,valor_despesa,Nome_loja,Email_loja,Telefone_loja,Horario_atendimento,Data_despesa,Tipo_despesa,Link_servico,viagem_id_viagem,Arquivo)
VALUES
(1,119.99,"Casas Bahia","casasbhaia@geradornv.com.br","(88) 3844-8067","07:00 - 17:00","2022-06-15","Utensilios","https://www.casasbahia.com.br",4,"NFefacas1652.pdf"),
(2,12.49,"Americanas","americanas@geradornv.com.br","(88) 3862-8667","07:00 - 19:00","2021-01-15","Mercado","https://www.americanas.com.br",2,"NFebatata2165.pdf"),
(3,16.00,"San Paolo","sanpaolo@geradornv.com.br","(88) 3624-8527","07:00 - 17:00","2021-06-15","Comida","https://www.sanpaollo.com.br",3,"CFesorvete2152.pdf"),
(4,430.75,"Extra","extra@geradornv.com.br","(88) 3958-8067","07:00 - 21:00","2020-06-15","Mercado","https://www.extra.com.br",1,"NFefeira2161.pdf"),
(5,19.99,"Baccio di latte","bacciodilatte@geradornv.com.br","(88) 3154-8067","07:00 - 17:00","2022-06-18","Comida","https://www.bacciodilatte.com.br",4,"CFesorvete1254.pdf"),
(6,25.99,"Spolleto","spolleto@geradornv.com.br","(88) 3844-8067","07:00 - 20:00","2021-01-14","Comida","https://www.spolleto.com.br",4,"CFemacarrao1652.pdf"),
(7,35.99,"kfc","kfc@geradornv.com.br","(88) 3844-8067","13:00 - 21:00","2021-06-17","Utensilios","https://www.kfc.com.br",4,"CFefrango1623.pdf"),
(8,80.99,"Casas Bahia","casasbhaia@geradornv.com.br","(88) 3844-8067","07:00 - 17:00","2020-06-12","Utensilios","https://www.casasbahia.com.br",4,"NFealicate6565.pdf");

INSERT INTO PontosTuristicos (Cod_pt,Nome,Tipo,Horario_funcionamento,Faixa_etaria,Valor_entrada,Acessibilidade,cidade_id_cidade)
VALUES
(1,"Pão de açúcar","Natural","07:00 - 17:00","Aberto","0.0",true,4),
(2,"Restaurante tradicional","Restaurante","19:00 - 23:00","18+","0.0",true,3),
(3,"Carnaval de bloco","Festa","08:00 - 20:00","18+","0.0",true,2),
(4,"Praia Noronha","Praia","07:00 - 17:00","Aberto","0.0",false,1);

INSERT INTO Agenda (Id_atividade,Data_atividade,Horario_inicio,Horario_fim,Atividade,Pt_cod_pt,viagem_Id_viagem)
VALUES
(1,"2020-06-10","12:00","15:30","Almoço na praia",4,1),
(2,"2021-02-20","12:00","15:30","Carnaval de bloco",3,2),
(3,"2021-06-14","18:00","19:30","jantar restaurante típico",2,3),
(4,"2022-06-12","12:00","15:30","Visitar o pão de açucar",1,4);

INSERT INTO ViagemHasCidades (viagem_id_viagem,cidade_id_cidade)
VALUES
(1,1),
(2,2),
(3,3),
(4,4);

INSERT INTO PessoaHasViagem (Pessoa_Id_pessoa,viagem_id_viagem)
VALUES
(1,1),
(3,1),
(5,1),
(6,1),
(1,2),
(5,2),
(4,2),
(6,2),
(7,2),
(1,3),
(2,3),
(5,3),
(4,3),
(7,3),
(3,3),
(1,4),
(3,4),
(4,4);
