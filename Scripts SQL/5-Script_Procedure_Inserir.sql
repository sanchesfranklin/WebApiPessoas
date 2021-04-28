CREATE PROCEDURE InserirCadastro
	@nome VARCHAR(50) = NULL,
	@dataNascimento DATE = NULL,
	@salario DECIMAL = NULL,
	@observacoes VARCHAR(200) = NULL,
	@nomeMae VARCHAR(50) = NULL,
	@nomePai VARCHAR(50) = NULL,
	@cpf CHAR(11) = NULL
AS
BEGIN
	INSERT INTO Pessoas(nome, dataNascimento, salario, 
	observacoes, nomeMae, nomePai, cpf)
	VALUES(@nome, @dataNascimento, @salario, 
	@observacoes, @nomeMae, @nomePai, @cpf)
	SELECT @@IDENTITY
END