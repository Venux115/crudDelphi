CREATE DATABASE seoSistemas;

CREATE TABLE CLIENTES(

    CD_CODIGOCLI int not null,
    DS_NOME varchar(50),
    DS_ENDERECO varchar(50),
    DS_BAIRRO varchar(30),
    NR_CEP int,
    DS_CIDADE varchar(30),
    DS_UF varchar(20),
    DS_FONE int,
    PRIMARY KEY(CD_CODIGOCLI)

);
