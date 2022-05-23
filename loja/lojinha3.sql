/**
	Lojinhacerto
	@author Pedro Guedes
	@version 1.1
*/

-- unique (não permitir valores duplicados)
create table usuarios(
idusu int primary key auto_increment,
usuario varchar(255) not null,
login varchar(255) not null unique,
senha varchar(255) not null,
perfil varchar(255) not null
);

describe usuarios;

-- para inserir uma senha com criptografia usamos md5()
insert into usuarios(usuario,login,senha,perfil)
values('Administrador','admin',md5('admin'),'admin');
insert into usuarios(usuario,login,senha,perfil)
values('Pedro Augusto','pedroau',md5('123456'),'dale');

select * from usuarios;

-- Acessando o sitema pela tela de login
-- and (função lógica onde todas as condições devem ser verdadeiras)
-- para inserir uma senha com criptografia usamos [md5()]
select * from usuarios where login='admin' and senha=md5('admin');
