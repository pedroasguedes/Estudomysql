/**
	Lojinhacerto
	@author Pedro Guedes
	@version 1.0
*/

create database lojinhaguedes2;
use lojinhaguedes2;
create table produtos(
	codigo int primary key auto_increment,
    produto varchar(255) not null,
    quantidade int not null,
    valor decimal(10,2)
    );
    describe produtos;
    
    select * from produtos;