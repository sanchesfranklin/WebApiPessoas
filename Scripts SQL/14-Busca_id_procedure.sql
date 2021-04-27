CREATE PROCEDURE BuscaIdPessoa -- ELG: Esse script deveria apenas executar a procedure que vc criou no passo 9
	@pessoaid VARCHAR(20)

AS

SET @pessoaid = '%' + @pessoaid + '%'

SELECT *
FROM Pessoas

WHERE IdPessoa like @pessoaid;
