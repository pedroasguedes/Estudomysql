/**
	Lojinhacerto
	@author Pedro Guedes
	@version 1.0
*/

create database joalheriaguedes2;
use joalheriaguedes2;
create table produtos(
	codigo int primary key auto_increment,
    barcode varchar(255) unique,
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
    values ('57436','Gargantilha Colors LB','Esmeralda','Nagalli','23900513','900','100','UN','Cofre 9',900,100,1200);
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('57434526','Gargantilha Colors RGB','Esmeralda led','Nagalli','20210513','3','100','UN','Cofre 9',900,100,1600);
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5743459',' Anel Prata Espinélios e Topázios London','Rubi','Nagalli','20200513','47','100','UN','Cofre 9',1200,100,1900);
   
    select * from produtos;
    
    select produto from produtos order by produto;
    update produtos set valor=1570.90 where codigo=1;
    delete from produtos where codigo=6;
    drop database joalheriaguedes2;
    
    
     select sum(estoque * custo) as total from produtos;
     
     select * from produtos where estoque < estoquemin;
     
     select codigo as código,
     produto,
     date_format(dataval,'%d/%m/%Y') as data_validade,
     estoque,
     estoquemin as estoque_mínimo
     from produtos where estoque < estoquemin;
     
    select codigo as código,
     produto,
     date_format(dataval,'%d/%m/%Y') as data_validade
from produtos;

select codigo as código,
     produto,
     date_format(dataval,'%d/%m/%Y') as data_validade,
datediff(dataval,curdate()) as dias_restantes
from produtos;

create table cliente (
 idcli int primary key auto_increment,
 nome varchar (255) not null,
 fone varchar(255) not null,
 cpf varchar(255) unique,
email varchar(255),
marketing varchar(255) not null,
cep varchar(255),
endereco varchar(255),
bairro varchar(255),
numero varchar(255),
complemento varchar(255),
cidade varchar(255),
uf char(2)
);

alter table produtos modify column barcode varchar(255) unique;
alter table cliente add column nascimento date;

insert into  cliente(nome,fone,cpf,email,marketing,nascimento)
 values ('Marcos Vinicius Lucas Filipe Viana','(12) 3737-3469','103.061.809-79','marcosviniciusviana@mixfmmanaus.com.br','Sim',19800613);   
 insert into  cliente(nome,fone,cpf,email,marketing,nascimento)
 values (' Vinicius Lucas Filipe Viana','(15) 0937-3469','103.0621.809-79','sviniciusviana@mixfmmanaus.com.br','Não',20040713);
 insert into  cliente(nome,fone,cpf,email,marketing,nascimento)
 values (' Lucas Filipe Viana','(55) 3737-3899','103.854.809-79','luviana@mixfmmanaus.com.br','Sim',19660613);
 insert into  cliente(nome,fone,cpf,email,marketing,nascimento)
 values ('Filipe Viana','(22) 9522-3469','785.061.809-79','fefe@mixfmmanaus.com.br','Não',19700819);
 insert into  cliente(nome,fone,cpf,email,marketing,nascimento)
 values (' Viana','(32) 3097-1235','173.653.459-09','viana@mixfmmanaus.com.br','Sim',19700819);
 
 update cliente set fone='15445-5145' where idcli=1;
 delete from cliente where idcli=6;
 
 select nome as Nome, fone as Telefone, email as Email 
 from cliente;
 
 select nome as Nome, nascimento as Aniversario
 from cliente;
 
 select * from cliente where marketing='Sim';