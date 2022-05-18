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