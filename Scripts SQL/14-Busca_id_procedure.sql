CREATE PROCEDURE BuscaIdPessoa
	@pessoaid VARCHAR(20)

AS

SET @pessoaid = '%' + @pessoaid + '%'

SELECT *
FROM Pessoas

WHERE IdPessoa like @pessoaid;