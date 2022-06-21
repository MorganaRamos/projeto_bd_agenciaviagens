CREATE DATABASE CreateRLFinalAmbDados;

USE CreateRLFinalAmbDados;

CREATE TABLE Viagem(

Id_viagem INT NOT NULL,

Nome_viagem VARCHAR(45)NOT NULL,

Inicio_ferias DATE NOT NULL,

Fim_ferias DATE NOT NULL,

Quantidade_pessoas INT NOT NULL,

PRIMARY KEY(Id_viagem));

CREATE TABLE Cidade(

id_cidade INT NOT NULL,

Nome_cidade VARCHAR(45) NOT NULL,

Estado VARCHAR(45) NOT NULL, 

Pais VARCHAR(45) NOT NULL,

PRIMARY KEY (Id_cidade));

CREATE TABLE Pessoa(

Id_pessoa INT NOT NULL,

Nome VARCHAR(50)NOT NULL,

Cidade VARCHAR(50) NOT NULL,

Rua VARCHAR(50) NOT NULL,

Numero VARCHAR(14)NOT NULL,

Complemento VARCHAR(50),

Bairro VARCHAR(50)NOT NULL,

CEP VARCHAR(9) NOT NULL,

Data_Nascimento DATE NOT NULL,

Genero VARCHAR(20)NOT NULL,

NecessidadeEspecial VARCHAR(50)NOT NULL,

PRIMARY KEY(Id_pessoa));

CREATE TABLE Telefones(

id_telefone INT NOT NULL,

Telefone VARCHAR(16)NOT NULL,

Pessoa_Id_pessoa  INT NOT NULL,

PRIMARY KEY(id_telefone	, Pessoa_Id_pessoa));

CREATE TABLE Email(

Id_email INT NOT NULL,

email_pessoa VARCHAR(320) NOT NULL,

Pessoa_Id_pessoa  INT NOT NULL,

PRIMARY KEY(Id_email,Pessoa_Id_pessoa));

CREATE TABLE Despesas(

Id_despesa INT NOT NULL,

valor_despesa DECIMAL(7,2) NOT NULL,

Nome_loja VARCHAR(50) NOT NULL,

Email_loja VARCHAR(320) NOT NULL,

Telefone_loja VARCHAR(15)NOT NULL,

Horario_atendimento VARCHAR(50) NOT NULL,

Data_despesa DATE NOT NULL,

Tipo_despesa VARCHAR(20)NOT NULL,

Link_servico VARCHAR(2048)NOT NULL,

viagem_id_viagem int NOT NULL,

Arquivo BLOB NOT NULL,

PRIMARY KEY(Id_despesa));

CREATE TABLE PontosTuristicos(

Cod_pt INT NOT NULL,

Nome VARCHAR(50)NOT NULL,

Tipo VARCHAR(45)NOT NULL,

Horario_funcionamento VARCHAR(45) NOT NULL, 

Faixa_etaria VARCHAR(45) NOT NULL,

Valor_entrada DECIMAL(7,2) NOT NULL,

Acessibilidade BOOLEAN NOT NULL,

cidade_id_cidade INT NOT NULL,

PRIMARY KEY (Cod_pt));

CREATE TABLE Agenda(

Id_atividade INT NOT NULL,

Data_atividade DATE NOT NULL,

Horario_inicio TIME NOT NULL,

Horario_fim TIME NOT NULL,

Atividade VARCHAR(50) NOT NULL,

Pt_cod_pt INT NOT NULL,

viagem_Id_viagem INT NOT NULL,

PRIMARY KEY(Id_atividade));

CREATE TABLE ViagemHasCidades(
viagem_id_viagem int NOT NULL,
cidade_id_cidade INT NOT NULL,
PRIMARY KEY(viagem_id_viagem,cidade_id_cidade)
);

CREATE TABLE PessoaHasViagem(
Pessoa_Id_pessoa  int NOT NULL,
viagem_id_viagem int NOT NULL,
PRIMARY KEY(Pessoa_Id_pessoa,viagem_id_viagem)
);

#================================================================================================================

ALTER TABLE ViagemHasCidades	
ADD FOREIGN KEY (viagem_id_viagem) REFERENCES Viagem(id_viagem),
ADD FOREIGN KEY (cidade_id_cidade) REFERENCES Cidade(id_cidade)
;

ALTER TABLE PessoaHasViagem	
ADD FOREIGN KEY (Pessoa_Id_pessoa) REFERENCES Pessoa(Id_pessoa),
ADD FOREIGN KEY (viagem_id_viagem) REFERENCES Viagem(id_viagem)
;

ALTER TABLE Despesas	
ADD FOREIGN KEY (viagem_id_viagem) REFERENCES Viagem(id_viagem)
;

ALTER TABLE PontosTuristicos	
ADD FOREIGN KEY (cidade_id_cidade) REFERENCES Cidade(id_cidade)
;

ALTER TABLE Email	
ADD FOREIGN KEY (Pessoa_Id_pessoa) REFERENCES Pessoa(Id_pessoa)
;

ALTER TABLE Telefones	
ADD FOREIGN KEY (Pessoa_Id_pessoa) REFERENCES Pessoa(Id_pessoa)
;

ALTER TABLE Agenda
ADD FOREIGN KEY (viagem_id_viagem) REFERENCES Viagem(id_viagem),
ADD FOREIGN KEY (Pt_cod_pt) REFERENCES PontosTuristicos(Cod_pt)
;


#================================================================================================================

