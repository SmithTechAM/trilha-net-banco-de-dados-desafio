--1
SELECT Nome,Ano FROM Filmes
--2
SELECT nome,ano,Duracao FROM FILMES
ORDER BY Ano
--3
SELECT Nome,Ano,Duracao FROM FILMES 
WHERE Nome = 'De Volta para o Futuro'
-- 4
SELECT Nome, Ano, Duracao FROM FILMES
WHERE Ano = 1997
-- 5 
SELECT Nome,Ano, Duracao FROM FILMES
WHERE Ano > 2000
-- 6 
SELECT Nome,Ano,Duracao FROM FILMES
WHERE Duracao > 100 AND Duracao <150
ORDER BY Duracao
-- 7 
SELECT Ano, COUNT(*)QuantidadeFilmes FROM FILMES
GROUP BY Ano
ORDER BY QuantidadeFilmes
-- 8
SELECT * FROM ATORES
WHERE GENERO ='M'
-- 9 
SELECT * FROM ATORES 
WHERE GENERO ='F'
ORDER BY PrimeiroNome
-- 10 
Select f.Nome, g.Genero From Filmes 
as f inner join FilmesGenero fg 
ON fg.IdFilme = f.Id inner join Generos g On g.Id = fg.IdGenero;
--11
Select f.Nome, g.Genero From Filmes 
as f inner join FilmesGenero fg 
ON fg.IdFilme = f.Id inner join Generos g 
On g.Id = fg.IdGenero where g.Genero = 'Mistério';
--12 
Select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel From Filmes 
as f inner join ElencoFilme ef ON ef.IdFilme = f.Id 
inner join Atores a On a.Id = ef.IdAtor;



