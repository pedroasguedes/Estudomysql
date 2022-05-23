/**
	Lojinhacerto
	@author Pedro Guedes
	@version 1.0
*/

create database joalheriaguedes2;
use joalheriaguedes2;
create table produtos(
	codigo int primary key auto_increment,
    produto varchar(255) not null,
    quantidade int not null,
    valor decimal(10,2)
    );
    describe produtos;
    
	insert into produtos(produto,quantidade,valor)
    values ('Brinco de Pérolas Classic','2','1235.00');
    insert into  produtos(produto,quantidade,valor)
    values ('Brinco de Pérolas Gota Long','2','1300.00');
    insert into  produtos(produto,quantidade,valor)
    values ('Anel Colors OX','1','1630.00');
    insert into  produtos(produto,quantidade,valor)
    values ('Anel Love Heart','1','1130.00');
    insert into  produtos(produto,quantidade,valor)
    values ('Gargantilha Colors Gravata','7','2530.00');
    insert into  produtos(produto,quantidade,valor)
    values ('Gargantilha Colors LB ','1','1930.00');
    select * from produtos;
    select produto from produtos order by produto;
    update produtos set valor=1570.90 where codigo=1;
    delete from produtos where codigo=6