/**
Agenda de contatos
@author Pedro Guedes
*/

-- Verificar bancos de dados
show databases;

-- Criar um novo banco de dados
create database teste;
create database agendaguedes;

-- Excluir um bancode dados
drop database teste ;

-- Selecionar o banco de dados
use agendaguedes;

-- Criando uma tabela
-- int -> tipo de dados - números inteiros
-- decimal(10,2) -> tipo de dados - números não inteiros
-- (10,2) 10 dígitos com 2 casas decimais
-- se for para cadastrar produtos decimal usar .
-- primary key (trasforma o campo em chave primária)
-- auto_icrement (numeração automático)
-- varchar(255) -> tipo de dados String (com variação) 
-- char(255) ->tipo de dados String (sem variação)
-- (255) -> máximo de caracteres
-- not null (obrigatório o preenchimento

create table contatos (
	id int primary key auto_increment,
    nome varchar(255) not null,
	fone varchar(255) not null,
    email varchar(255) 
);

-- verificar tabelas do banco
show tables;

-- descrever a tabela
describe contatos;

-- Adicionado uma coluna(campo) na tabela
alter table contatos add column obs varchar(255);
alter table contatos add column fone2 varchar(255);

-- adicionado uma coluna(campo) a tabela após um campo
alter table contatos add column cel varchar(255) after fone;

-- modificando uma propriedade da tabela
alter table contatos modify column cel varchar(255) not null;

-- excluir uma coluna (campo) da tabela
alter table contatos drop column obs;

-- excluir a tabela
drop table contatos;

/***** CRUD  *****/

-- CRUD Create
-- inserir um registro na tabela
-- tipo varchar ou char usar 'asoas simples'
insert into contatos(nome,fone,email)
values ('Pedro Augusto','99999-1234','au@email.com');

insert into contatos(nome,fone,email)
values ('Jeff','99999-1864','pinei@email.com');

insert into contatos(nome,fone,email)
values ('Jeff','99999-1251','eusouopior@email.com');

insert into contatos(nome,fone,email)
values ('alexandre o grande','99999-9034','farao@email.com');

insert into contatos(nome,fone)
values ('jao','213123-4383');

insert into contatos(nome,fone)
values ('Elon Musk','213123-4384');

insert into contatos(nome,fone)
values ('Elon Musk','213123-4382');

insert into contatos(fone,email)
values ('213123-4383','josmal@email.com');

-- CRUD Read
-- seleção de todos os registros da tabela
-- *(caracter para pesquisa todos os caracteres dentro da coluna

select * from contatos;

-- seleção de um registro(contato) específico
select * from contatos where id=5;
select * from contatos where nome='Bejamin';
select * from contatos where nome like 'j%';
-- seleção de campos específicos de um registro
select nome,fone from contatos;
select nome,fone,email from contatos order by nome;
select nome,fone,email from contatos order by nome desc;
-- criando apelidos para os campos
select nome as Contatos,fone as Telefone,email as Email
from contatos order by nome;

-- CRUD Update
update contatos set email='pineifeio@liame.moc' where id=10;
update contatos set nome='Bejamin' where id=3;
update contatos set nome='Bejamin',fone='15445-5145',email='bebyfisic@gravity.doc' where id=3;

-- CRUD Delete
delete from contatos where id=6
