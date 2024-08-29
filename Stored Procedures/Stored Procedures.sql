USE bdEscolaIdiomas

--1)
CREATE PROCEDURE spBusca_Aluno
@codAluno INT
AS
	DECLARE @nomeAluno VARCHAR(200)
	DECLARE @dataNascAluno DATE

	SET @nomeAluno = (SELECT nomeAluno AS 'NomeAluno' FROM tbAluno
		WHERE codAluno = @codAluno)
	SET @dataNascAluno = (SELECT dataNascAluno AS 'DataNascimento' FROM tbAluno
		WHERE codAluno = @codAluno)

	PRINT('Nome do Aluno = ' + @nomeAluno + 'Data Nascimento do Aluno = ' + CONVERT(VARCHAR(10), @dataNascAluno))

--2)
CREATE PROCEDURE spInsere_Aluno
	@nomeAluno VARCHAR(200)
	, @dataNascAluno DATE
	, @rgAluno CHAR(12)
	, @naturalidadeAluno CHAR(2)
AS
	INSERT INTO tbAluno (nomeAluno,dataNascAluno,rgAluno,naturalidadeAluno) VALUES (@nomeAluno,@dataNascAluno,@rgAluno,@naturalidadeAluno)

	PRINT('Aluno ' + @nomeAluno + 'Cadastrado Com Sucesso')

--3)
CREATE PROCEDURE Aumento_Preco
@valorCurso
AS

	DECLARE @nomeCurso VARCHAR(50)
	DECLARE @porcentualCurso INT

	SET @valorCurso = (SELECT valorCurso FROM tbCurso
		WHERE @nomeCurso = nomeCurso) * @porcentualCurso 

	PRINT(@valorCurso)
	

--4)
CREATE PROCEDURE Exibe_Turma
@nomeTurma
AS
	DECLARE @nomeTurma VARCHAR(30)


	SET @codTurma = (SELECT codTurma FROM tbTurma
		WHERE @nomeTurma = nomeTurma)
	SET @nomeTurma = (SELECT nomeTurma FROM tbTurma
		WHERE @nomeTurma = nomeTurma)
	SET @nomeCurso = (SELECT codTurma FROM tbTurma
		WHERE @nomeTurma = nomeTurma)
	SET @horarioTurma = (SELECT horarioTurma FROM tbTurma
		WHERE @nomeTurma = nomeTurma)

	PRINT(' Código da turma : ' + @codTurma + ' , Nome da Turma ' + @nomeTurma + ' , Curso da Turma : ' + @nomeCurso + ' , Horario da Turma : ' )

--5)
CREATE PROCEDURE Exibe_AlunosdaTurma






	