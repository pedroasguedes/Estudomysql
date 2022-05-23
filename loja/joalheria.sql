/**
	Lojinhacerto
	@author Pedro Guedes
	@version 1.0
*/

create database joalheriaguedes2;
use joalheriaguedes2;
create table produtos(
	codigo int primary key auto_increment,
    barcode varchar(255),
    produto varchar(255) not null,
    descricao varchar(255) not null,
    fabricante varchar(255) not null,
    datacad timestamp default current_timestamp,
    dataval date,
    estoque int not null,
    estoquemin int not null,
    unidade varchar(255) not null,
    custo decimal(10,2) not null,
    localizacao varchar(255) ,
    lucro decimal(10,2),
    venda decimal(10,2)
    );
    describe produtos;
    
	insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('1234560','Brinco de Pérolas Classic','Pérolas Negras','Nagalli','23900523','90','4','UN','Cofre 4',5000,100,3000);
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values  ('126549870','Brinco de Pérolas Gota Long','Pérolas Brancas','Nagalli','23900523','190','10','UN','Cofre 5',7000,70,4000.00);
    insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('123441234','Anel Colors OX','Ouro Branco','Nagalli','23900513','230','23','UN','Cofre 6',3000,60,1000);
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values  ('53214324','Anel Love Heart','Ametista','Nagalli','23900513','500','50','UN','Cofre 7',8000,30,6000);
    insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('57434','Gargantilha Colors Gravata','Esmeralda','Nagalli','23900513','200','40','UN','Cofre 8',8000,30,6000);
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5743456','Gargantilha Colors LB','Esmeralda','Nagalli','23900513','900','100','UN','Cofre 9',900,100,1200);
    
    select * from produtos;
    
    select produto from produtos order by produto;
    update produtos set valor=1570.90 where codigo=1;
    delete from produtos where codigo=6;
    drop database joalheriaguedes2;
    