USE bdEscolaIdiomas

--A)
SELECT nomeCurso AS 'Curso', valorCurso AS 'Valor do Curso'  FROM tbCurso
	WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

--B)
SELECT nomeAluno AS 'Nome', rgAluno AS 'RG' FROM tbAluno
	WHERE dataNascAluno IN (SELECT MIN(dataNascAluno) FROM tbAluno)

--C)
SELECT nomeAluno AS 'Nome', rgAluno AS 'RG' FROM tbAluno
	WHERE dataNascAluno IN (SELECT MAX(dataNascAluno) FROM tbAluno)

--D)
SELECT nomeCurso AS 'Curso', valorCurso AS 'Valor'  FROM tbCurso
	WHERE valorCurso IN (SELECT MAX(valorCurso) FROM tbCurso)

--E)
SELECT nomeAluno AS 'Nome', nomeCurso AS 'Curso' FROM tbMatricula
	INNER JOIN tbAluno ON tbAluno.codAluno = tbMatricula.codAluno
	INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
	INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
		WHERE dataMatricula IN (SELECT MIN(dataMatricula) FROM tbMatricula INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso GROUP BY tbCurso.codCurso)

--F)
SELECT nomeAluno AS 'Nome' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		WHERE dataMatricula IN (SELECT MIN(dataMatricula) FROM tbMatricula)

--G)
SELECT nomeAluno AS 'Nome', rgAluno AS 'RG', dataNascAluno AS 'Data Nascimento do Aluno' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
	INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
	INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
		WHERE nomeCurso LIKE 'Inglês'