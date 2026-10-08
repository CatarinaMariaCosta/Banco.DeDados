## Relacionamento entre tabelas de uma biblioteca
A ideia centreal, é relacionar duas tabelas distintas, a *ALUNOS* e *EMPRESTIMOS*

---

1- Primeiro criamos a tabela clientes:
```sql
CREATE TABLE alunos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
)
```
2-Criamos a tabela EMPRESTIMOS com referência à coluna ID da tabela ALUNOS:
```sql
CREATE TABLE emprestimos(
    id SERIAL PRIMARY KEY,
    livros VARCHAR(50) NOT NULL,
    id_cliente INT REFERENCES alunos (id)
)
```
3- com esse código eu adicionei os alunos que emprestaram livros
```sql
INSERT INTO alunos (nome) VALUES ('Bea'),('Gabriel'),('Filipe'),('Julia');

SELECT * FROM alunos;
```
![alt text](image.png)

4- Aqui adicionei os livros lidos por cada aluno:
```sql
INSERT INTO emprestimos (livros,id_livros) VALUES ('O Pequeno Principe',3),('Frankenstein',1),('Pai Rico, Pai Pobre',2),('A Revolução dos Bichos',2);

SELECT * FROM emprestimos;
```
![alt text](image-1.png)

5- Esse código a seguir, demonstra os alunos que leram livros
```sql
SELECT alunos.nome,emprestimos.livros FROM emprestimos INNER JOIN alunos ON emprestimos. id_cliente = alunos.id
```
![alt text](image-2.png)

6- Já nesse código, mostra a aluna que não leu nada também
```sql
SELECT alunos.nome,emprestimos.livros FROM alunos LEFT JOIN emprestimos ON emprestimos. id_cliente = alunos.id
```
![alt text](image-3.png)