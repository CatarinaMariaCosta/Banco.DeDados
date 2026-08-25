-- CREATE TABLE streaming(
--     id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     Nome VARCHAR(100) NOT NULL,
--     Duração NUMERIC(200) NOT NULL,
--     Nota NUMERIC NOT NULL DEFAULT 0
-- );

-- INSERT INTO streaming(nome,duração,nota)
-- VALUES('O Rei Leão','88','4.3'),
-- ('A Viagem de Chihiro','124','4.3'),
-- ('Meu Amigo Totoro','86','4.1'),
-- ('A Bela e a Fera','84','4.0'),
-- ('Aladdin','90','4.0'),
-- ('Cinderela','74','3.7'),
-- ('Pinóquio','88','3.7'),
-- ('Branca de Neve e os Sete Anões','83','3.8'),
-- ('Toy Story','81','4.2'),
-- ('Viva: A Vida é uma Festa','105','4.2'),
-- ('Procurando Nemo','100','4.1'),
-- ('Divertida Mente','95','4.1'),
-- ('Shrek','90','4.0'),
-- ('Monstros S.A','92','4.1'),
-- ('O magico de Oz','102','4.1'),
-- ('E.T. O Extraterrestre','115','3.9'),
-- ('Mary Poppins','139','4.1'),
-- ('Os Goonies','114','3.9'),
-- ('Matilda','98','3.5'),
-- ('WALL-E','98','4.2');

-- SELECT * FROM streaming;

-- UPDATE streaming
-- SET nota = 4.7
-- WHERE id=5;

-- UPDATE streaming
-- SET nota = 4.7
-- WHERE id=4;

-- UPDATE streaming
-- SET nota = 4.7
-- WHERE id=18;

-- UPDATE streaming
-- SET nota = 4.7
-- WHERE id=11;

-- UPDATE streaming
-- SET nota = 4.7
-- WHERE id=14;

--SELECT *FROM streaming ORDER BY id DESC;

-- DELETE streaming
-- WHERE nome = 'WALL-E',
-- WHERE nome = 'Mary Poppins',
-- WHERE nome = 'Pinóquio',
-- WHERE nome = 'Meu Amigo Totoro',
-- WHERE nome = 'A Viagem de Chihiro';