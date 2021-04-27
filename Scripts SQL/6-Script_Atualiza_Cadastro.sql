CREATE PROCEDURE AtualizaCadastro
	@idPessoa int = NULL,
	@nome VARCHAR(50) = NULL,
	@dataNascimento DATE = NULL,
	@salario DECIMAL = NULL,
	@observacoes VARCHAR(200) = NULL,
	@nomeMae VARCHAR(50) = NULL,
	@nomePai VARCHAR(50) = NULL,
	@cpf CHAR(11) = NULL
  -- ELG: Ateção para formatação e padronização do código. Remova a linha em branco. 
AS
BEGIN

	UPDATE Pessoas
	SET nome = @nome, dataNascimento = @dataNascimento, salario = @salario, observacoes = @observacoes, -- ELG: Colocar um campo por linha, melhora a legibilidade do código
	nomeMae = @nomeMae, nomePai = @nomePai, cpf = @cpf
	WHERE idPessoa = @idPessoa

	-- ELG: O item 6 pede para vc retornar alguma coisa antes de finalizar a execução da procedure.
END
