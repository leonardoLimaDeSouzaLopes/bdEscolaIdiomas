CREATE DATABASE bdEscolaIdiomas
USE bdEscolaIdiomas
GO

--USE master
--DROP DATABASE bdEscolaIdiomas

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR (70) NOT NULL
	, rgAluno VARCHAR (12) NOT NULL
	, cpfAluno VARCHAR (15) NOT NULL
	, logradouro VARCHAR (70) NOT NULL
	, numero VARCHAR (20) NOT NULL
	, complemento VARCHAR (50)
	, cep VARCHAR (9) NOT NULL
	, bairro VARCHAR (50) NOT NULL
	, cidade VARCHAR (50) NOT NULL
	, dataNascAluno SMALLDATETIME NOT NULL
	, naturalidadeAluno CHAR(2)
)

CREATE TABLE tbTelefoneAluno(
	codTelAlu INT PRIMARY KEY IDENTITY (1,1)
	, numTelAlu VARCHAR (12) NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
)
--DROP TABLE tbAluno

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR (50) NOT NULL
	, cargaHorariaCurso INT
	, valorCurso SMALLMONEY NOT NULL
)
--DROP TABLE tbCurso

CREATE TABLE tbNivel(
	codNivel INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR (50)
)
--DROP TABLE tbNivel

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, descPeriodo VARCHAR (50) NOT NULL
)
--DROP TABLE tbPeriodo

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, descTurma VARCHAR (50) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, codNivel INT FOREIGN KEY REFERENCES tbNivel(codNivel)
	, codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
	, horario SMALLDATETIME NOT NULL
	, diaSemana VARCHAR (15) NOT NULL
)
--DROP TABLE tbTurma

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)
--DROP TABLE tbMatricula