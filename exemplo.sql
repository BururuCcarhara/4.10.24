create database tabelaDeProdutos_1e;
use tabelaDeProdutos_1e;

create table vendas(
id_vendas int auto_increment primary key not null,
produtos varchar (100) not null,
quantidade integer not null,
preco decimal (10,2) not null
);

insert into vendas ( produtos, quantidade, preco)
value ("ferrari",5,100000.00),
("fusca",5,2000.00),
("porshe",5,90000.00),
("variante",5,60000.00),
("logan",5,56000.00),
("f1",5,8000.00),
("celta",5,77000.00),
("kwid",5,45000.00),
("ferrari",5,99900.00),
("new hrv",5,15000.00);

select * from vendas;

select count(*) As total_vendas from vendas;
select sum(quantidade) As total_produtos from vendas;
select avg (preco) AS media_de_preco from vendas;

select min(preco) AS menor_preco from vendas;
select max(preco) AS maior_preco from vendas;

select produtos, count(*) as total_vendas from vendas 
group by produtos;

select produtos, sum(quantidade) as total_produtos_vendas from vendas
group by produtos
having total_produtos_vendas >17;

select produtos,quantidade,preco from vendas
order by preco desc
limit 5;

select produto,preco (select max(preco) from vendas) as Maior_preco from vendas;