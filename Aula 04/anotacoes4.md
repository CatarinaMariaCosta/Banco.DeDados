## Lista de filmes de desenhos clássicos
Nome: Catarina Costa

Primiramete a atividade pede para que criarmos uma tabela de filmes com sua duração (em minutos) e sua avaliação de 0-5;

Comecei criando a pasta Movies no Moba:

![alt text](image-2.png)

Então joguei no VSCODE para começar a criar meu banco de dados, iniciei com o 

```sql
CREATE TABLE streaming(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Duração NUMERIC(200) NOT NULL,
    Nota NUMERIC NOT NULL DEFAULT 0
);
```
![alt text](image-3.png)

E logo ja fui colocando as informações

```sql
INSERT INTO streaming(nome,duração,nota)
VALUES('O Rei Leão','88','4.3'),
('A Viagem de Chihiro','124','4.3'),
('Meu Amigo Totoro','86','4.1'),
('A Bela e a Fera','84','4.0'),
('Aladdin','90','4.0'),
('Cinderela','74','3.7'),
('Pinóquio','88','3.7'),
('Branca de Neve e os Sete Anões','83','3.8'),
('Toy Story','81','4.2'),
('Viva: A Vida é uma Festa','105','4.2'),
('Procurando Nemo','100','4.1'),
('Divertida Mente','95','4.1'),
('Shrek','90','4.0'),
('Monstros S.A','92','4.1'),
('O magico de Oz','102','4.1'),
('E.T. O Extraterrestre','115','3.9'),
('Mary Poppins','139','4.1'),
('Os Goonies','114','3.9'),
('Matilda','98','3.5'),
('WALL-E','98','4.2');
```
![alt text](image-4.png)

E para aparecer a tabela eu digitei SELECT * FROM e dei um F5 para executar

Na atividade apresentada, ele quis que nós atualizarmos 5 dados entao ultilizei o codigo 

```sql
 UPDATE streaming
SET nota = 4.7
WHERE id=4;
```
![alt text](image-5.png)

Para aparecer os dados analisados assim:

![](image-1.png)

*Podemos analisar que os id ficaram fora de ordem então eu arrumei usando o código
```sql
SELECT *FROM streaming ORDER BY id DESC;
```
Então vai ficar assim arumadinho

![alt text](image-6.png)

E por ultimo, apagar 5 dados, eu ultilizei o código
```sql
DELETE streaming
WHERE nome = WALL-E;
```