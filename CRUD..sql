CREATE DATABASE bd_teste;
USE bd_teste;

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nome_cliente VARCHAR(50),
	email_cliente VARCHAR(100),
	cpf_cliente CHAR(15) UNIQUE,
	telefone_cliente VARCHAR(30)
);

CREATE TABLE enderecos(
	id_endereco INT PRIMARY KEY AUTO_INCREMENT,
	indice_cliente INT,
	logradoro VARCHAR(80),
	numero VARCHAR(10000),
	complemento VARCHAR(50),
	cep CHAR(9),
	CONSTRAINT fk_cliente FOREIGN KEY (indice_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes(nome_cliente ,email_cliente ,cpf_cliente ,telefone_cliente) VALUES ("Lucas","lucas@gmail.com","111.111.111-11","17992162676");
INSERT INTO clientes(nome_cliente ,email_cliente ,cpf_cliente ,telefone_cliente) VALUES ("Daniela Verardi","dani@gmail.com","222.222.222-22","142214621646");
INSERT INTO clientes(nome_cliente ,email_cliente ,cpf_cliente ,telefone_cliente) VALUES ("Gabriela","gabi@gmail.com","333.333.333-1","123456785487");

INSERT INTO enderecos(indice_cliente ,logradoro ,numero ,complemento,cep) VALUES ("1","Av Brasil","502","","15440000");
INSERT INTO enderecos(indice_cliente ,logradoro ,numero ,complemento,cep) VALUES ("2","Av JK","400","","15015600");
INSERT INTO enderecos(indice_cliente ,logradoro ,numero ,complemento,cep) VALUES ("3","rua benjamin","4266","apartamento 66","15092480");

select * from clientes
select * from enderecos
SELECT * FROM clientes as a INNER JOIN enderecos as b WHERE a.id_cliente = b.indice_cliente;
select nome_cliente from clientes;
select nome_cliente, id_cliente from clientes;
select cep from enderecos where indice_cliente = 2; 

UPDATE clientes SET telefone_cliente = "000000000" WHERE id_cliente = 3;

DELETE FROM clientes WHERE id_cliente = 1;
DELETE FROM enderecos WHERE indice_cliente = 1; 
