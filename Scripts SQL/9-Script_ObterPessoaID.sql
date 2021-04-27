CREATE PROCEDURE BuscaIdPessoa
	@pessoaid VARCHAR(20) -- ELG: Este campo é um inteiro na definição da sua tabela.
	-- ELG: Ateção para formatação e padronização do código.
AS

SET @pessoaid = '%' + @pessoaid + '%'

SELECT *
FROM Pessoas

WHERE IdPessoa like @pessoaid; -- ELG: IdPessoa é um campo numérico, então a melhor expressão de busca é com = . Like apenas para campos texto quando vc não sabe o conteúdo exato para a busca.
exec BuscaIdPessoa '1';
