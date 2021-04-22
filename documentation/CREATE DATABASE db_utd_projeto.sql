CREATE DATABASE db_utd_projeto;
USE db_utd_projeto;

CREATE TABLE Categoria(
	codcategoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50)
);

CREATE TABLE Cidade(
	codcidade INT AUTO_INCREMENT PRIMARY KEY,
	cidade VARCHAR(255),
	uf CHAR(2)
);

CREATE TABLE Fornecedor(
	codfornecedor INT AUTO_INCREMENT PRIMARY KEY,
	Cidade_codcidade INT,
	fornecedor VARCHAR(255),
	endereco VARCHAR(255),
	num INT,
	bairro VARCHAR(255),
	cep CHAR(9),
	contato VARCHAR(255),
	cnpj CHAR(18),
	insc VARCHAR(255),
	tel CHAR(14),
	FOREIGN KEY (Cidade_codcidade) REFERENCES Cidade(codcidade)
);

CREATE TABLE Produto(
	codproduto INT AUTO_INCREMENT PRIMARY KEY,
	Categoria_codproduto INT,
	Fornecedor_codfornecedor INT,
	descricao VARCHAR(255),
	peso DOUBLE,
	controlado BOOL,
	qtdemin INT,
	FOREIGN KEY (Categoria_codproduto) REFERENCES Categoria(codcategoria),
	FOREIGN KEY (Fornecedor_codfornecedor) REFERENCES Fornecedor(codfornecedor)
);

create TABLE Transportadora(
	codtransportadora INT AUTO_INCREMENT PRIMARY KEY,
	Cidade_codcidade INT,
	transpotadora VARCHAR(255),
	endereco VARCHAR(255),
	num INT,
	bairro VARCHAR(255),
	cep CHAR(9),
	cnpj CHAR(18),
	insc VARCHAR(255),
	contato VARCHAR(255),
	tel CHAR(14),
	FOREIGN KEY (Cidade_codcidade) REFERENCES Cidade(codcidade)
);

CREATE TABLE Entrada(
	codentrada INT AUTO_INCREMENT PRIMARY KEY,
	Transportadora_codtransportadora INT,
	dataped DATE,
	dataentr DATE,
	total DOUBLE,
	frete DOUBLE,
	numnf INT,
	imposto DOUBLE,
	FOREIGN KEY (Transportadora_codtransportadora) REFERENCES Transportadora(codtransportadora)
);

CREATE TABLE ItemEntrada(
	coditementrada INT AUTO_INCREMENT PRIMARY KEY,
	Produto_codproduto INT,
	Entrada_codentrada INT,
	lote VARCHAR(255),
	qdte INT,
	valor DOUBLE,
	FOREIGN KEY (Produto_codproduto) REFERENCES Produto(codproduto),
	FOREIGN KEY (Entrada_codentrada) REFERENCES Entrada(codentrada)
);

CREATE TABLE Loja(
	codloja INT AUTO_INCREMENT PRIMARY KEY,
	Cidade_codcidade INT,
	nome VARCHAR(255),
	endereco VARCHAR(255),
	num INT,
	bairro VARCHAR(255),
	tel CHAR(14),
	insc VARCHAR(255),
	cnpj CHAR(18),
	FOREIGN KEY (Cidade_codcidade) REFERENCES Cidade(codcidade)
);

CREATE TABLE Saida(
	codsaida INT AUTO_INCREMENT PRIMARY KEY,
	Loja_codloja INT,
	Transportadora_codtransportadora INT,
	total DOUBLE,
	frete DOUBLE,
	imposto DOUBLE,
	FOREIGN KEY (Transportadora_codtransportadora) REFERENCES Transportadora(codtransportadora),
	FOREIGN KEY (Loja_codloja) REFERENCES Loja(codloja)
);

CREATE TABLE ItemSaida(
	coditemsaida INT AUTO_INCREMENT PRIMARY KEY,
	Saida_codsaida INT,
	Produto_codproduto INT,
	lote VARCHAR(255),
	qdte INT,
	valor DOUBLE,
	FOREIGN KEY (Saida_codsaida) REFERENCES Saida(codsaida),
	FOREIGN KEY (Produto_codproduto) REFERENCES Produto(codproduto)
);