CREATE TABLE CLIENTE (
	ID_CLIENTE INT NOT NULL,
	RAZAO_SOCIAL VARCHAR(80),
	FANTASIA VARCHAR(80),
	CPF_CNPJ VARCHAR(20),
	TIPO_FJ CHAR(1),
	NOME VARCHAR(80),
	EMAIL VARCHAR(255),
	SITE VARCHAR(255),
	ENDERECO VARCHAR(255),
	COMPLEMENTO VARCHAR(40),
	NUMERO VARCHAR(20),
	BAIRRO VARCHAR(50),
	IE VARCHAR(30),
	IM VARCHAR(30),
	PRIMARY KEY (ID_CLIENTE)
)