CREATE PROCEDURE AtualizaCadastro
	@idPessoa int = NULL,
	@nome VARCHAR(50) = NULL,
	@dataNascimento DATE = NULL,
	@salario DECIMAL = NULL,
	@observacoes VARCHAR(200) = NULL,
	@nomeMae VARCHAR(50) = NULL,
	@nomePai VARCHAR(50) = NULL,
	@cpf CHAR(11) = NULL

AS
BEGIN

	UPDATE Pessoas
	SET nome = @nome, dataNascimento = @dataNascimento, salario = @salario, observacoes = @observacoes, 
	nomeMae = @nomeMae, nomePai = @nomePai, cpf = @cpf
	WHERE idPessoa = @idPessoa

END