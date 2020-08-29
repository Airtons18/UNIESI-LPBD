create table tbl_categorias(
id_categoria smallint(6) not null,
categoria varchar(30) not null,
primary key(id_categoria));

create table tbl_editora(
id_editora smallint(6) not null,
nome_editora varchar(50) not null,
primary key(id_editora));

create table tbl_autores(
id_autor smallint(6) not null,
nome_autor varchar(30) not null,
sobrenome_autor varchar(60) not null,
primary key(id_autor));

create table tbl_livros(
id_livro smallint not null,
nome_livro varchar(70) not null,
id_categorias smallint not null,
id_autor smallint not null,
id_editora smallint not null,
data_pub date not null,
preco_livro decimal(6,2) not null,
isbn10 char(10) not null unique,
isbn13 char(13) not null unique,
primary key(id_livro),
foreign key(id_categoria) references tbl_categorias(id_categoria),
foreign key(id_autor) references tbl_autores(id_autor),
foreign key(id_editora) references tbl_editora(id_editora));

insert into tbl_editora(id_editora, nome_editora) values 
(1000, "Prentice Hall"),
(2000, "O Reilly"),
(3000, "Microsoft Press"),
(4000, "Willey"),
(5000, "McGraw Hill Education");
 
 select * from tbl_editora;
 
 insert into tbl_autores(id_autor, nome_autor, sobrenome_autor) values
(1000, 'Daniel', 'Barret'),
(2000, 'Gerald', 'Carter'),
(3000, 'Mark', 'Sobell'),
(4000, 'William', 'Stanek'),
(5000, 'Richard', 'Blum'),
(6000, 'Jostein', 'Gaarder'),
(7000, 'Umberto', 'Eco'),
(8000, 'Neil', 'De Grasse Tyson'),
(9000, 'Stephen', 'Hawking'),
(10000, 'Stephen', 'Jay Gould'),
(11000, 'Charles', 'Darwin'),
(12000, 'Alan', 'Turing'),
(13000, 'Simon', 'Monk'),
(14000, 'Paul', 'Scherz');

insert into tbl_categorias(id_categoria, categoria) values
(1010, 'Tecnologia'),
(1020, 'História'),
(1030, 'Literatura'),
(1040, 'Astronomia');


insert into tbl_livros(id_livro, nome_livro, id_categoria, id_autor, id_editora, data_pub, preco_livro, isbn10, isbn13) values
(1, 'Linux Command Line and Shell Scripting', 1010, 1000, 1000, '2015-01-09', 68.35, '9781', '1234567891');

SELECT nome_Autor FROM tbl_autores;



CREATE TABLE vendas(
ID_Venda smallint primary key,
nome_Vendedor varchar(20) not null,
quantidade int not null,
produto varchar(20) not null,
cidade varchar(20) not null default 'Aguas de Lindoia');

INSERT INTO Vendas (ID_Venda, nome_Vendedor, quantidade,
produto, cidade) VALUES
(10,'Jorge',1400,'Mouse','São Paulo'),
(12,'Tatiana',1220,'Teclado','São Paulo'),
(14,'Ana',1700,'Teclado','Rio de Janeiro'),
(15,'Rita',2120,'Webcam', cidade),
(18,'Marcos',980,'Mouse','São Paulo'),
(19,'Carla',1120,'Webcam','Recife'),
(22,'Roberto',3145,'Mouse', cidade);

select * from vendas where cidade='São Paulo';

SELECT SUM(quantidade) As Total_Mouses FROM vendas
WHERE produto = 'Mouse';

SELECT cidade, SUM(quantidade) As Total FROM vendas
group by(cidade);

INSERT INTO Vendas (ID_Venda, nome_Vendedor, quantidade,
produto, cidade) VALUES
(23,'Marcelo',1500,'Gabinete Gamer','Sao Paulo');

SELECT cidade, COUNT(*) As Total FROM vendas
GROUP BY cidade;

SELECT cidade, SUM(quantidade) As Total fROM Vendas
GROUP BY cidade
HAVING SUM(Quantidade) < 2500;

SELECT cidade, SUM(quantidade) As Total_Teclados FROM Vendas
WHERE produto = 'Teclado'
GROUP BY cidade
HAVING SUM(quantidade) < 1500;

SELECT * FROM tbl_livros
WHERE ID_Livro = 1 AND ID_Autor = 1000;

SELECT * FROM tbl_livros
WHERE ID_Livro = 1 OR ID_Autor = 3000;

SELECT * FROM tbl_livros
WHERE ID_Livro = 1 AND NOT ID_Autor = 2000;

DELETE FROM nome_tabela
WHERE coluna=valor;

select * from tbl_autores;

DELETE FROM tbl_autores WHERE ID_Autor=14000;

UPDATE tbl_livros SET nome_livro = "SSH O SHELL SEGURO"
WHERE id_livro=1;

select * from tbl_livros;
select * from tbl_editora;
update tbl_editora set nome_editora = "UNIESI";

select * from tbl_autores;

SELECT * FROM tbl_autores
WHERE nome_autor LIKE 'S%';

SELECT * FROM tbl_autores
WHERE nome_autor NOT LIKE 'S%';

SELECT nome_autor FROM tbl_autores
WHERE nome_autor LIKE '_%am';

