/**
	Lojinhacerto
	@author Pedro Guedes
	@version teste
*/


use lojinhaguedes2;
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
    values ('1234560','Brinco de Pérolas Classic','Pérolas Negras','Nagalli','14530523','1','4','UN','Cofre 4',5000,100,3000);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values  ('126549870','Brinco de Pérolas Gota Long','Pérolas Brancas','Nagalli','20000523','6','10','UN','Cofre 5',7000,70,4000.00);
    
    insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('123441234','Anel Colors OX','Ouro Branco','Nagalli','13900513','22','23','UN','Cofre 6',3000,60,1000);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values  ('53214324','Anel Love Heart','Ametista','Nagalli','15001208','5','50','UN','Cofre 7',8000,30,6000);
    
    insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('57434','Gargantilha Colors Gravata','Esmeralda','Nagalli','13900513','20','40','UN','Cofre 8',8000,30,6000);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5743456','Gargantilha Colors LB','Esmeralda','Nagalli','19900513','9','100','UN','Cofre 9',900,100,1200);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5743456','Gargantilha Colors RGB','Esmeralda led','Nagalli','20210513','3','100','UN','Cofre 10',900,100,1600);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('5743456',' Anel Prata Espinélios e Topázios London','Rubi','Nagalli','20200513','47','100','UN','Cofre 11',1200,100,1900);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values ('89713695','Solitário Ouro Branco e 70 Pontos de Diamantes','Ouro 18k','Nagalli','28900917','21','30','UN','Cofre 12',40000,200,120000);
    
    insert into  produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
    values('8948410','Solitário Ouro Branco com 70 Pontos de Diamante','Nagalli','28900917','34','90','UN','Cofre 13',32000,100,90000);
    
     select * from produtos;
     
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
insert into  cliente(nome,fone,cpf,email,marketing)
 values ('Marcos Vinicius Lucas Filipe Viana','(12) 3737-3469','103.061.809-79','marcosviniciusviana@mixfmmanaus.com.br','Sim');  

select * from cliente;

-- foreign key(FK) Chave estrangeira que cria o relacionamento
-- do tipo 1-N com a tabela clientes
-- FK(pedidos)______________PK(clientes)
-- Observação: Usar o mesmo nome e tipo de dados nas chaves (PK e FK)

create table pedidos (
pedido int primary key auto_increment,
dataped timestamp default current_timestamp,
total decimal(10,2),
idcli int not null,
foreign key (idcli) references cliente(idcli)
);

-- aberturas de pedidos
insert into pedidos(idcli) values(1);

-- verificar pedidos
select * from pedidos where pedido = 1;

-- verificar pedidos junto com o nome do clientes
-- inner join (unir informações de 2 ou mais tabelas)
-- 
select * from pedidos inner join cliente
on pedidos.idcli = cliente.idcli;

-- verificar pedidos junto com o nome do cliente (relatório simplificado)
-- %H:%i exibir também o horario formatado
select
pedidos.pedido,
date_format(pedidos.dataped, '%d%m%Y - %H:%i') as data_ped,
cliente.nome as cliente,
cliente.fone
from pedidos inner join cliente
on pedidos.idcli = cliente.idcli;
