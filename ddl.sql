CREATE DATABASE bdEscolaIdiomas
GO


--USE master
--DROP DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas


CREATE TABLE tbCurso (
	codCurso INT PRIMARY KEY IDENTITY (1, 1)
	, nomeCurso VARCHAR(50)
	, cargaHorariaCurso INT
	, valorCurso MONEY
)

--DROP TABLE tbCurso


CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY (1, 1)
	, nomeTurma VARCHAR(30)
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, horarioTurma DATETIME
)

--DROP TABLE tbTurma

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1, 1)
	, nomeAluno VARCHAR(200)
	, dataNascAluno DATETIME
	, rgAluno CHAR(12)
	, naturalidadeAluno CHAR(2)
)

--DROP TABLE tbAluno

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY (1, 1)
	, dataMatricula DATETIME
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)

--DROP TABLE tbMatricula
