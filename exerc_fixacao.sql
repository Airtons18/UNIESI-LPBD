create database exerc_fixacao;

use exerc_fixacao;

create table departamentos(
codigo_depto int not null,
nome varchar(30) not null,
localizacao varchar(30) not null,
primary key(codigo_depto));

create table funcionarios(
codigo_func int not null,
codigo_depto int not null,
primeiro_nome varchar(20) not null,
segundo_nome varchar(20),
ultimo_nome varchar(20) not null,
data_nasc date not null,
cpf varchar(14) not null unique,
rg varchar(13) not null,
endereco varchar(60) not null,
cep varchar(10) not null,
cidade varchar(60) default "Aguas de Lindoia",
fone_res varchar(14),
fone_cel varchar(15),
funcao varchar(30),
salario decimal(8,2) not null,
primary key(codigo_func),
foreign key(codigo_depto) references departamentos(codigo_depto));

insert into departamentos(codigo_depto, nome, localizacao) values
(1, "Depto A", "Andar A"),
(2, "Depto B", "Andar B"),
(3, "Depto C", "Andar C");

select * from departamentos;

insert into funcionarios(codigo_func, codigo_depto, primeiro_nome, segundo_nome, ultimo_nome, 
data_nasc, cpf, rg, endereco, cep, cidade, fone_res, fone_cel, funcao, salario) values
(1, 1, "", "", "", "xxxx-xx-xx", "cpf", "rg", "endereco", "cep",
"cidade", "fone_res", "fone_cel", "funcao", 000.00);


INSERT INTO funcionarios (codigo_func,codigo_depto,primeiro_nome,segundo_nome,ultimo_nome,data_nasc,cpf,rg,endereco,cep,fone_res,fone_cel,funcao,salario) VALUES 
(1,3,"Patrick","Yoshio","Damon","2020-08-21","16551224 9730","16800611 3438","P.O. Box 687, 8450 Risus Rd.","76654-554","(03) 0972 5336","05 5 3406 2384","nec, leo.","6622.17"),
(2,3,"Zahir","Ashton","Ulysses","2020-08-21","16081226 2129","16971019 5505","534 Diam St.","02877-836","(09) 2193 3428","06 6 9293 7768","molestie","5549.91"),
(3,3,"Hall","Armando","David","2020-08-21","16290225 2309","16331126 3416","P.O. Box 114, 5233 Odio Ave","48610-055","(05) 4419 0048","07 0 5418 0732","Integer ","5639.27"),
(4,3,"Galvin","Rashad","Hammett","2020-08-21","16100911 2143","16270403 8674","2754 Massa. Ave","62920-881","(08) 3467 8000","04 6 2012 4749","a ultricies ","3910.85"),
(5,3,"Colin","Hiram","Jonah","2020-08-21","16270714 4453","16991115 2982","Ap #954-1605 Nunc Street","63985-738","(02) 3508 1499","03 5 2869 6736","ridiculus mus. ","5135.38"),
(6,3,"Ciaran","Honorato","Ulysses","2020-08-21","16160407 6214","16440430 9975","859-6063 Eget, Road","22151-997","(01) 3572 9806","09 2 9064 6693","sollicitudin ","1759.98"),
(7,3,"Lawrence","Abbot","Zephania","2020-08-21","16930416 7126","16000404 7106","Ap #431-6920 Elementum St.","95499-708","(04) 5323 9447","07 7 7220 2824","mi","7861.31"),
(8,3,"Guy","Keegan","Jasper","2020-08-21","16840807 6845","16761119 5756","1717 Sit Av.","85248-643","(05) 8541 3666","01 5 6322 0072","Cras convallis ","2234.91"),
(9,3,"Castor","Octavius","Hu","1974-06-08","16090117 2692","16690720 2003","P.O. Box 111, 3240 At Rd.","17816-372","(09) 4840 6778","08 5 2626 6731","luctus et","8803.42"),
(10,3,"Amery","Coby","Colt","1988-11-20","16970513 8924","16750616 2994","767-2913 Hendrerit Road","34317-878","(07) 4724 6327","07 7 3961 8888","Phasellus ","4534.98"),
(11,3,"Hu","Brandon","Fuller","1997-11-15","16800928 0408","16560618 2474","849-8790 Vel St.","69228-865","(05) 9200 2814","01 4 2449 9576","congue, elit s","6792.82"),
(12,3,"Drake","Barry","Oleg","1950-08-05","16151114 5607","16141021 6418","306-416 Faucibus. St.","32644-218","(06) 5446 1279","02 5 1704 4862","fames ac turpis ","9161.31"),
(13,3,"Burke","Kasimir","Marsden","1994-12-02","16350711 3433","16830425 5675","977-8288 Gravida. St.","39332-153","(02) 6893 6823","01 9 8469 3034","adipiscing, ","8363.66"),
(14,3,"Lucas","Blake","Octavius","1980-01-21","16500620 0363","16130706 8898","P.O. Box 690, 4553 Nisl. St.","12315-421","(09) 7428 8946","06 2 7313 6650","semper, dui","2004.45"),
(15,3,"Phelan","George","Julian","1981-09-19","16870216 5187","16380528 8879","7560 Ad Av.","42864-421","(02) 0216 5129","02 2 2473 0161","cursus","4238.84"),
(16,3,"Alexander","Grant","Rudyard","2000-07-10","16100225 2219","16070303 2516","P.O. Box 952, 298 Tristique Street","53621-748","(02) 0202 2253","08 0 7880 1842","Donec ","4110.82"),
(17,3,"Colin","Cain","Logan","1999-12-28","16250623 1659","16811125 0125","6597 Neque. St.","10544-621","(02) 7997 7093","03 4 9051 6822","fringilla est. Mauris eu","2715.34"),
(18,3,"Orson","Quentin","Byron","1992-04-05","16010614 1021","16250603 6033","477-3741 Dui. Rd.","16609-958","(03) 7593 3424","05 7 8894 9029","penatibus ","9735.02"),
(19,3,"Phillip","Keith","Kasper","1963-08-30","16111020 8822","16890817 4603","P.O. Box 134, 5921 Nunc Avenue","82746-507","(02) 9475 1709","07 2 2365 2957","torquent per ","1949.24"),
(20,3,"Aaron","Seth","Ali","1967-02-22","16810825 5848","16711006 1111","6776 Pellentesque St.","19529-813","(03) 7800 0444","09 5 3879 1402","Cras convallis","7160.12");

select primeiro_nome, segundo_nome from funcionarios order by segundo_nome; #2

select * from funcionarios order by cidade; #3

select primeiro_nome, segundo_nome, ultimo_nome,salario from funcionarios having (salario) > 1000.00 order by primeiro_nome, segundo_nome, ultimo_nome; #4

select primeiro_nome, data_nasc from funcionarios order by data_nasc desc; #5

select primeiro_nome, ultimo_nome, cep, endereco, fone_res, fone_cel from funcionarios; #6

select SUM(salario) As Total_Pagamento from funcionarios; #7

select COUNT(*) As Total_Funcionarios from funcionarios; #8

select AVG(salario) As Media_salarial from funcionarios; #9

select primeiro_nome from funcionarios where funcao="Recepcionista" and cidade="Itapira"; #10





