create database Dado_e_tabela_1e;
use Dado_e_tabela_1e;

create table funcionario(
cod_Fun int auto_increment primary key not null,
nome varchar (100) not null,
sexo_Fun varchar (1) not null,
bairroFun varchar (100) not null,
salfunc decimal(10,2) not null,
setorFun varchar(100) not null
);

insert into funcionario ( nome, sexo_Fun, bairroFun, salfunc, setorFun)
value ("jamar pinto","M","jabaquara",1000.00,"marketing"),
("josemar","M","grajaú",1500.00,"vendas"),
("josemara","f","socorro",2000.00,"rh"),
("josie","f","socorro",2000.00,"marketing"),
("chico prego","M","jabaquara",30000.00,"vendas"),
("joseilson Armando dias","M","pedreira",8000.00,"vendas"),
("kawazaki","M","jurubatuba",500000.00,"não selecionado"),
("sandra aparecida de oliveira","M","jabaquara",755000.00,"marketing"),
("jozeneide","M","grajaú",65500.00,"produção"),
("neia","M","pedreira",54500.00,"marketing"),
("kleber gorila","M","jurubatuba",69000.00,"produção"),
("vitor","M","jabaquara",77000.00,"marketing");

select * from funcionario;
select sum(salfunc) As total_salario from funcionario;
select count(setorFun) As total_setorFun from funcionario
where setorFun= "marketing";
select avg (salfunc) AS media_de_salario from funcionario;
select salfunc, sum(salfunc) as total_salario from funcionario
group by salfunc
having total_salario <3000;

