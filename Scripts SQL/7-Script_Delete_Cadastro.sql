CREATE PROCEDURE ExcluiCadastro
	@idPessoa int
  -- ELG: Ateção para formatação e padronização do código. Remova a linha em branco. 
AS
BEGIN
	DELETE FROM Pessoas
	WHERE idPessoa = @idPessoa
END
