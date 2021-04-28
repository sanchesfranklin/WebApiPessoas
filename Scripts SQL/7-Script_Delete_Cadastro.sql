CREATE PROCEDURE ExcluiCadastro
	@idPessoa int
AS
BEGIN
	DELETE FROM Pessoas
	WHERE idPessoa = @idPessoa
	PRINT 'OK'
END