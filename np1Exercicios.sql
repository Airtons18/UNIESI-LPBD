-- a) Mostre a média de salários da folha de pagamento.
select avg(salario) Média_de_salários from funcionarios;

-- b) Mostre os nomes, a função dos funcionários e o departamento que ele trabalha. Agrupando
-- pelo nome do departamento.
select f.primeiro_nome, f.funcao, d.nome from funcionarios f, departamentos d where
f.codigo_depto = d.codigo_depto
group by d.nome;

-- c) Mostre os nomes, o endereço, RG e CPF dos funcionários que trabalham no departamento de
-- TI.
select f.primeiro_nome, f.endereco, f.rg, f.cpf from funcionarios f, departamentos d where
f.codigo_depto = d.codigo_depto and
d.nome="TI";
update funcionarios set data_nasc="1985-06-15" where codigo_func=3;
select data_nasc from funcionarios;
-- d) Mostre o nome e os salários dos funcionários que nasceram entre 01/01/1980 a 31/12/1990.
select f.primeiro_nome, f.salario, f.data_nasc from funcionarios f where
f.data_nasc >= "1980-01-01" && f.data_nasc <= "1990-12-31";
-- ###################			QUESTÃO 02			############################## 
-- a) Mostre os nomes dos países e seus continentes.
select c.Name, c.Continent from country c;

-- b) Mostre os nomes dos países, região e a população dos países do continente ‘Europe’.
select c.Name, c.Region, c.Population from country c where
c.Continent="Europe";

-- c) Mostre a expectativa de vida das pessoas do continente ‘Asia'.
select c.LifeExpectancy from country c where
c.Continent="Asia";

-- d) Crie uma view que mostre os nomes dos países, seu presidente (HeadOfState), tipos de
-- governo (GovernmentForm) e a população dos países do continente ‘South America’ e com
-- população maior que 2000000.
create view vw_nomeDosPaises as
select c.Name, c.HeadOfState, c.GovernmentForm, c.Population from country c where
c.Continent="South America" and c.Population > 2000000;

select * from vw_nomedospaises;


-- e) Crie uma view que mostre os nomes dos países, tamanho da sua área (surfaceArea) e seu
-- idioma. Exibir somente os países com idioma ‘English’ como oficial. Ordenar pelo tamanho da
-- área (da menor para maior). Mostre também como usar a View.
create view vw_tamanhopaises as
select c.Name, c.SurfaceArea, cl.Language from country c, countrylanguage cl where
c.Code = cl.CountryCode and
cl.Language = "English" and cl.IsOfficial="T"
order by c.SurfaceArea asc;

select * from vw_tamanhopaises;

-- f) Altere a view do exercício anterior para incluir a porcentagem de pessoas que falam o idioma
-- ‘English’ como oficial. Mostre também como usar a View.
alter view vw_tamanhopaises as 
select c.Name, c.SurfaceArea, cl.Language, cl.Percentage from country c, countrylanguage cl where
c.Code = cl.CountryCode and
cl.Language = "English" and cl.IsOfficial="T"
order by c.SurfaceArea asc;

select * from vw_tamanhopaises;