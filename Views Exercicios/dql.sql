USE bdEscolaIdiomas

CREATE VIEW vwPrecoBaixo AS
SELECT (tbCurso.codCurso) , nomeCurso 'Curso' , cargaHorariaCurso , valorCurso FROM tbCurso
	WHERE valorCurso < ( SELECT AVG ( valorCurso ) 'Preco medio' FROM tbCurso )

CREATE VIEW vwPrecoBaixo AS
SELECT (tbCurso.codCurso) , nomeCurso 'Cursos' , cargaHorariaCurso ,FROM tbCurso
	GROUP BY cargaHorariaCurso

CREATE VIEW vwAlunosTurma AS
SELECT (tbAluno.codAluno) , nomeCurso 'Cursos' FROM tbCurso
	GROUP BY cargaHorariaCurso

