CREATE PROCEDURE ExcluiCadastro
	@idPessoa int
  -- ELG: Ateção para formatação e padronização do código. Remova a linha em branco. 
AS
BEGIN
	DELETE FROM Pessoas
	WHERE idPessoa = @idPessoa
	
	
     -- ELG: O item 7 pede para vc retornar alguma coisa antes de finalizar a execução da procedure.
END
