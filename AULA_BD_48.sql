CREATE DATABASE empresa_xpto;

USE empresa_xpto;

CREATE TABLE funcionarios (
	id INT AUTO_INCREMENT,
    nome varchar(60),
    sobrenome varchar(60),
    salario DECIMAL(10,2),
    primary key(id)
);

SET SQL_SAFE_UPDATES = 0;
use empresa_xpto;

#selecionar todos os funcionários
select * from funcionarios;

#selecionar todos os funcionários que tem o salário menor que 1212
select * from funcionarios WHERE salario < 1212;

#selecionar apenas nome, sobrenome e salario de 5 funcionarios ordernado do maior para o menor
select nome, sobrenome, salario from funcionarios order by salario desc limit 5;

#selecionar apenas nome e sobrenome de 5 funcionarios ordernado do maior para o menor 
select nome, sobrenome from funcionarios order by salario desc limit 5;

#selecionar todos os funcionários que possui o nome Carlo
select * from funcionarios WHERE nome = "Carlo";

#selecionar todos os funcionários que possui o nome Carlo ou o nome Gil
select * from funcionarios WHERE nome = "Carlo" or nome="Gil";

#selecionar todos os funcionários que possui o nome Carlo e possui salário maior que 15 mil
select * from funcionarios WHERE nome = "Carlo" AND salario > 15000;

#selecionar todos os funcionários que possui o nome Carlo ou o nome Gil e possui salário maior que 15 mil
select * from funcionarios WHERE (nome = "Carlo" or nome="Gil") AND salario > 15000;

#selecionar todos os funcionários que possui sobrenome Benn ou o sobrenome Ramet
select * from funcionarios WHERE sobrenome = "Benn" OR sobrenome = "Ramet";

#selecionar todos os funcionários que possui sobrenome Benn ou o sobrenome Ramet e possui salário menos que 5 mil
select * from funcionarios WHERE (sobrenome = "Benn" OR sobrenome = "Ramet") AND salario < 5000;

#selecionar a soma dos salários de todos os funcionários
SELECT SUM(salario) AS soma_salarios
FROM funcionarios;

#selecionar a media salarial de todos os funcionários
SELECT AVG(salario) AS media_salarios
FROM funcionarios;

#selecionar a contagem de todos os funcionários
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios;

#selecionar o maior salário de todos os funcionários
SELECT MAX(salario) AS maior_salario
FROM funcionarios;

#selecionar o menor salário de todos os funcionários 
SELECT MIN(salario) AS menor_salario
FROM funcionarios;

#selecionar a contagem de todos os funcionários que possui salário entre 1212 e 5 mil
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios where salario between 1212 and 5000;

#selecionar a contagem de todos os funcionários que possui salário entre 5001 e 10 mil
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios where salario between 5001 and 10000;

#selecionar a contagem de todos os funcionários que possui salário entre 10001 e 15000
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios where salario between 10001 and 15000;

#selecionar a contagem de todos os funcionários que possui salário maior que 15 mil
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios where salario > 15000;
