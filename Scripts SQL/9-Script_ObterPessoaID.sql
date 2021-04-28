CREATE PROCEDURE BuscaIdPessoa
	@pessoaid int
AS
BEGIN
	SELECT *
	FROM Pessoas
	WHERE IdPessoa = @pessoaid;
END;