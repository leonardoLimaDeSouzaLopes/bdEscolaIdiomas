USE bdEscolaIdiomas
GO


-- 1)
SELECT DISTINCT nomeAluno AS 'Aluno ', nomeCurso AS 'Curso'  FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso

-- 2)
SELECT COUNT ( DISTINCT tbAluno.codAluno) AS 'Quantidade de Alunos', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
			GROUP BY nomeCurso

-- 3)
SELECT COUNT (tbAluno.codAluno) AS 'Quantidade de Alunos', nomeTurma AS 'Turma' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
		GROUP BY nomeTurma

-- 4)
SELECT COUNT (tbAluno.codAluno) AS 'Quantidade de Alunos Matriculados em Maio de 2016' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
	WHERE MONTH (dataMatricula) = 5 AND YEAR (dataMatricula) = 2016

-- 5)
SELECT nomeAluno AS 'Aluno', nomeTurma AS 'Turma', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
			ORDER BY nomeAluno

-- 6)
SELECT nomeCurso AS 'Curso', horarioTurma AS 'Horario'  FROM tbCurso
	INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso

-- 7)
SELECT COUNT ( DISTINCT tbAluno.codAluno) AS 'Quantidade de Alunos', naturalidadeAluno AS 'Estado' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
			WHERE nomeCurso LIKE 'Inglês'
			GROUP BY naturalidadeAluno

-- 8)
SELECT nomeAluno AS 'Aluno', CONVERT (VARCHAR(10) , dataMatricula, 103) AS 'Data da Matricula' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno

-- 9)
SELECT DISTINCT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno 
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeAluno LIKE 'A%' AND nomeCurso LIKE 'Inglês'

-- 10)
SELECT COUNT (tbMatricula.codMatricula) AS 'Quantidade de Matriculas Feitas em 2016' FROM tbMatricula
	WHERE YEAR (dataMatricula) = 2016

--11)
SELECT COUNT (tbMatricula.codMatricula) AS 'Quantidade de Matriculas', nomeCurso AS 'Curso' FROM tbMatricula
	INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
		INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
			GROUP BY nomeCurso

--12)
SELECT COUNT ( DISTINCT tbAluno.codAluno) AS 'Número de Alunos que Fazem Cursos de Mais de R$ 300,00' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE valorCurso > 300

--13)
SELECT DISTINCT nomeAluno AS 'Alunos que fazem Alemão' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeCurso = 'Alemão'
