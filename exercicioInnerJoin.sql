-- 1 – Crie o banco de dados exercicioInnerJoin
create database exercicioInnerJoin;

-- 2 – Crie as tabelas conforme o diagrama do slide anterior
create table cliente(
cpf int primary key,
nome varchar(60),
dtNasc date);

create table modelo(
codMod int primary key,
Desc_2 varchar(40));

create table patio(
num int primary key,
ender varchar(40),
capacidade int);

create table veiculo(
placa varchar(8) primary key,
Modelo_codMod int,
Cliente_cpf varchar(14),
cor varchar(20),
foreign key (Modelo_codMod) references modelo(codMod),
foreign key (Cliente_cpf) references cliente(cpf));

create table estacionamento(
cod int primary key,
Patio_num int,
Veiculo_placa varchar(8),
dtEntrada varchar(10),
dtSaida varchar(10),
hsEntrada varchar(10),
hsSaida varchar(10),
foreign key (Patio_num) references patio(num),
foreign key (Veiculo_placa) references veiculo(placa));

-- 3 - Exiba a placa e o nome dos donos de todos os
-- veículos
	
select v.placa, c.nome from veiculo v, cliente c where
c.cpf = v.Cliente_cpf;

-- 4 - Exiba o CPF e o nome do cliente que possui o
-- veiculo de placa “JJJ-2020”
select c.cpf, c.nome, v.placa from veiculo v, cliente c where
c.cpf = v.Cliente_cpf and
v.placa="JJJ-2020";

-- 5 - Exiba a placa e a cor do veículo que possui o código de
-- estacionamento 1
select v.placa, v.cor, es.cod from estacionamento es, veiculo v where
es.Veiculo_placa = v.placa and
es.cod=1;

-- 6 - Exiba o endereço, a data de entrada e de saída dos
-- estacionamentos do veículo de placa “JEG-1010”
select p.ender, es.dtEntrada, es.dtSaida, es.Veiculo_placa from patio p, estacionamento es where
p.num = es.Patio_num and
es.Veiculo_placa="JEG-1010";

-- 7 - Exiba a quantidade de vezes os veículos de cor verde estacionaram.
select count(v.cor), v.placa from veiculo v, estacionamento es where
v.placa = es.Veiculo_placa and
v.cor="Verde";

-- 8 - Liste todos os clientes que possuem carro de modelo 1
select c.nome ,m.codMod from veiculo v, modelo m, cliente c where
v.Modelo_codMod = m.codMod and
c.cpf = v.Cliente_cpf and
m.codMod="1";
-- 9 - Liste as placas, os horários de entrada e saída dos veículos de cor
-- verde
select v.placa, es.hsEntrada, es.hsSaida, v.cor from veiculo v, estacionamento es where
v.placa = es.Veiculo_placa and
v.cor="Verde";

-- 10 - Liste todos os estacionamentos do veículo de placa “JJJ-2020”
select es.cod, es.Veiculo_placa from veiculo v, estacionamento es where
v.placa = es.Veiculo_placa and
v.placa="JJJ-2020";

-- 11 - Exiba o nome do cliente que possui o veículo cujo código do
-- estacionamento é 2
select c.nome, es.cod, es.Veiculo_placa from cliente c, estacionamento es, veiculo v where
v.Cliente_cpf = c.cpf and
es.Veiculo_placa = v.placa and
es.cod="2";

-- 12 - Exiba o CPF do cliente que possui o veículo cujo código do
-- estacionamento é 3
select c.cpf, es.cod from cliente c, estacionamento es, veiculo v where
c.cpf = v.Cliente_cpf and
v.placa = es.Veiculo_placa and
es.cod="3";

-- 13 - Exiba a descrição do modelo do veículo cujo código do
-- estacionamento é 2
select m.Desc_2 from modelo m, veiculo v, estacionamento es where
m.codMod = v.Modelo_codMod and
v.placa = es.Veiculo_placa and
es.cod="2";

-- 14 - Exiba a placa, o nome dos donos e a descrição dos os
-- modelos de todos os veículos
select v.placa, c.nome, m.Desc_2 from veiculo v, cliente c, modelo m where
m.codMod = v.Modelo_codMod and
v.Cliente_cpf = c.cpf;

insert into estacionamento(cod, Patio_num, Veiculo_placa, dtEntrada, dtSaida, hsEntrada, hsSaida) value
(1, 1, "HZV-1069", "11/09/2020", "12/09/2020", "15:10", "16:00"),
(2, 1, "JJJ-2020", "02/09/2020", "10/09/2020", "15:00", "15:30"),
(3, 1, "JEG-1010", "09/09/2020", "09/09/2020", "14:10", "17:30"),
(4, 1, "NET-5232", "22/09/2020", "24/09/2020", "11:10", "12:00"),
(5, 1, "AUH-7397", "25/09/2020", "27/09/2020", "06:10", "10:00"),
(6, 2, "MNM-1497", "01/09/2020", "02/09/2020", "07:10", "09:00");

insert into patio(num, ender, capacidade) values
(1, "Piso 1", 5),
(2, "Piso 2", 5);

insert into modelo(codMod, Desc_2) values
(1, "Elan S-2 1.6 16V"),
(2, "Grand Vitara 2.5 V6 5p Aut."),
(3, "HOVER CUV 2.4 16V 4WD 5p Mec."),
(4, "GLE-350 Family 3.0 V6 258cv 4x4 Diesel"),
(5, "SL-2 1.9"),
(6, "Swift GTi 1.3 3p");

insert into veiculo(placa, Modelo_CodMod, cor, Cliente_cpf) values
("HZV-1069", 1, "Branco", "750.191.050-23"), -- Airton
("JJJ-2020", 2, "Amarelo", "994.415.514-49"), -- Raphaela Editado placa
("JEG-1010", 3, "Vermelho", "588.411.097-93"), -- Rodrigo
("NET-5232", 4, "Amarelo", "945.062.000-80"), -- Pedro
("AUH-7397", 5, "Azul", "043.849.540-34"), -- Viviane
("MNM-1497", 6, "Bege", "908.936.440-48"); -- Cauã

insert into cliente(cpf, nome, dtNasc) values
("750.191.050-23", "Airton Aparecido dos Santos Neto", "1999-08-30"),
("994.415.514-49", "Raphaela Oliveira", "2000-12-29"),
("588.411.097-93", "Rodrigo Cunha Silva", "1979-03-05"),
("945.062.000-80", "Pedro Pardal", "1950-09-15"),
("043.849.540-34", "Viviane Nascimento", "1966-01-31"),
("908.936.440-48", "Cauã Anthony Almada", "1968-09-12");

