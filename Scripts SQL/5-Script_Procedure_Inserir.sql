CREATE PROCEDURE InserirCadastro
	@idPessoa int = NULL, -- ELG: Percebi que vc não está usando esse parâmetro. Será que é realmente necessário ele estar aqui?
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

	INSERT INTO Pessoas(nome, dataNascimento, salario, observacoes, nomeMae, nomePai, cpf)
	VALUES(@nome, @dataNascimento, @salario, @observacoes, @nomeMae, @nomePai, @cpf)
  
  -- ELG: O item 5 pede para vc retornar alguma coisa antes de finalizar a execução da procedure.
END
