USE [dbPICC_20202]
GO

/****** Object:  Schema [projetoongback]    Script Date: 12/10/2020 16:36:35 ******/
CREATE SCHEMA [projetoongback]
GO


/* TABELA 1 */

CREATE TABLE Volunt�rio(
        Volunt�rioID INT NOT NULL,
        CPF CHAR(11),
        NOME VARCHAR(50),
        EMAIL VARCHAR(50),
        Idade Char(3),
        UserINFO INT
		UserINFO INTEGER
)
ALTER TABLE Volunt�rio
ADD CONSTRAINT pkusuario PRIMARY KEY(Volunt�rioID)


/* TABELA 2 */

CREATE TABLE UserInfo(
        UserINFO INT NOT NULL,
        Avalia��o de outras ongs VARCHAR(500),
        Outras ATIV feitas VARCHAR(500),
)
ALTER TABLE Sobre o usu�rio(Para ONG)
ADD CONSTRAINT pkusuario PRIMARY KEY(Volunt�rioID)


/* TABELA 3 */

CREATE TABLE Atividade(
        AtivID INT NOT NULL,
        Volunt�rioID INTEGER 
		OngID INTEGER
		InfoID INTEGER
)
ALTER TABLE Atividade
ADD CONSTRAINT pkusuario PRIMARY KEY(AtivID)


/* TABELA 4 */ 

CREATE TABLE Informa��es da Atividade(
        InfoID INT NOT NULL,
        Descri��o VARCHAR(500),
        Localiza��oID INTEGER,
        dhID INTEGER
)
ALTER TABLE Informa��es da Atividade
ADD CONSTRAINT pkusuario PRIMARY KEY(Volunt�rioID)


/* TABELA 5 */

CREATE TABLE DataHora(
        dhID INT NOT NULL,
        Dat4 DATETIME
		Hor�rio TIME 
		addinfo VARCHAR(500)
)
ALTER TABLE Datahora
ADD CONSTRAINT pkusuario PRIMARY KEY(dhID)


/* TABELA 6 */ 

CREATE TABLE Localiza��o(
        Localiza��oID INT NOT NULL,
		Rua VARCHAR(100)
        CidadeID INTEGER
)
ALTER TABLE Localiza��o
ADD CONSTRAINT pkusuario PRIMARY KEY(Localiza��oID)


/* TABELA 7 */

CREATE TABLE Cidade(
        CidadeID INT NOT NULL,
        Nome VARCHAR(50)
		EstadoID INTEGER
)
ALTER TABLE Cidade
ADD CONSTRAINT pkusuario PRIMARY KEY(CidadeID)


/* TABELA 8 */

CREATE TABLE Estado(
        EstadoID INT NOT NULL,
        Nome VARCHAR(30)
		UF CHAR(2)
)
ALTER TABLE Estado
ADD CONSTRAINT pkusuario PRIMARY KEY(EstadoID)


/* TABELA 9 */ 

CREATE TABLE ONG(
        ongID INT NOT NULL,
        Nome VARCHAR(1100),
        N� de ID VARCHAR(50),
        Ong INTEGER
)
ALTER TABLE ONG
ADD CONSTRAINT pkusuario PRIMARY KEY(ongID)


/* TABELA 10 */

CREATE TABLE Informa��es da ONG(
        OngIF INT NOT NULL,,
        �rea de atua��o VARCHAR(100),
        Tipos de atividades VARCHAR(100),
)
ALTER TABLE Informa��es da ONG
ADD CONSTRAINT pkusuario PRIMARY KEY(OngIF)

