CREATE PROCEDURE spBusca_Aluno
@codAluno INT
AS
	DECLARE @nomeAluno INT
	DECLARE @dataNascAluno SMALLDATETIME

	SET @nomeAluno = (SELECT nomeAluno AS 'NomeAluno' FROM tbAluno
		WHERE codAluno = @codAluno)
	SET @dataNascAluno = (SELECT dataNascAluno AS 'DataNascimento' FROM tbAluno
		WHERE codAluno = @codAluno)

	PRINT('Nome do Aluno = ' + @nomeAluno + 'Data Nascimento do Aluno = ' + CONVERT(VARCHAR(10), @dataNascAluno))