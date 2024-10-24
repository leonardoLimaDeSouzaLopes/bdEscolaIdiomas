USE bdEscolaIdiomas

--A
CREATE FUNCTION fc_diaSemana(@Data DATE)
	RETURNS VARCHAR(40)
	AS
		BEGIN
			DECLARE @DiaSemana VARCHAR (40)
			DECLARE @Dia INT
			
			SET @Dia = DatePart(dw, @Data)

			IF @Dia = 1
				BEGIN
					SET @DiaSemana = 'DOMINGO'
				END
			IF @Dia = 2
				BEGIN
					SET @DiaSemana = 'SEGUNDA-FEIRA'
				END
			IF @Dia = 3
				BEGIN
					SET @DiaSemana = 'TERÇA-FEIRA'
				END
			IF @Dia = 4
				BEGIN
					SET @DiaSemana = 'QUARTA-FEIRA'
				END
			IF @Dia = 5
				BEGIN
					SET @DiaSemana = 'QUINTA-FEIRA'
				END
			IF @Dia = 6
				BEGIN
					SET @DiaSemana = 'SEXTA-FEIRA'
				END
			IF @Dia = 7
				BEGIN
					SET @DiaSemana = 'SABADO'
				END
			RETURN @DiaSemana
		END

SELECT MinhaFuncao = dbo.fc_diaSemana(dataMatricula  INT) FROM tbMatricula

--B
CREATE FUNCTION fc_tamanhoCurso(@Tempo INT)
	RETURNS VARCHAR(40)
	AS
		BEGIN
			DECLARE @TamanhoCurso VARCHAR(40)

			IF(@Tempo < 1000)
				BEGIN
					SET @TamanhoCurso = 'CURSO RÁPIDO'
				END
			ELSE
				BEGIN
					SET @TamanhoCurso = 'CURSO EXTENSO'
				END
			
			RETURN @TamanhoCurso

		END

SELECT MinhaFuncao = dbo.fc_tamanhoCurso(cargaHorariaCurso) FROM tbCurso

--C
CREATE FUNCTION fc_precoCurso(@Preco MONEY)
	RETURNS VARCHAR(40)
	AS
		BEGIN
			DECLARE @PrecoCurso VARCHAR(40)

			IF(@Preco <= 400)
				BEGIN
					SET @PrecoCurso = 'CURSO BARATO'
				END
			ELSE
				BEGIN
					SET @PrecoCurso = 'CURSO CARO'
				END
			
			RETURN @PrecoCurso
		END

SELECT MinhaFuncao = dbo.fc_precoCurso(valorCurso) FROM tbCurso