--1--
SELECT Nome, Ano FROM FILMES;
--2--
SELECT Nome, Ano, Duracao FROM FILMES ORDER BY Ano;
--3--
SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'De Volta para o Futuro';
--4--
SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano = 1997;
--5--
SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano > 2000;
--6--
SELECT Nome, Ano, Duracao FROM FILMES WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;
--7--
SELECT Ano, COUNT(*) AS Quantidade FROM FILMES GROUP BY Ano ORDER BY Quantidade DESC;
--8--
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';
--9--
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;
--10--
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
--11--
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos 
ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério';
--12--
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;