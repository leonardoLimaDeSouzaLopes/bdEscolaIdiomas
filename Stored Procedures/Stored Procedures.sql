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

--2)
CREATE PROCEDURE Insere_Aluno
AS
	PRINT('Insira os dados do Aluno: Nome, data de nascimento, rg e naturalidade')
	DECLARE @nomeAluno VARCHAR(200)
	DECLARE @dataNascAluno DATE
	DECLARE @rgAluno CHAR(12)
	DECLARE @naturalidadeAluno CHAR(2)

	INSERT INTO tbAluno (nomeAluno,dataNascAluno,rgAluno,naturalidadeAluno) VALUES (@nomeAluno,@dataNascAluno,@rgAluno,@naturalidadeAluno)

	PRINT(' Aluno ' + @nomeAluno + ' cadastrado com sucesso!')
