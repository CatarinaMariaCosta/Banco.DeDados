## Aula 03

Para criar um Banco de dados, utilizamos o comando :
```sql
CREATE DATABASE teste;
```
Para apagar um Banco de dados, utilizamos o comando:

```sql
DROP DATABASE cidades;
```
>NÃO ESQUECER DO ;
 
 ## Modelagem do Banco de Dados

 ```mermaid
 erDiagram
 PRODUTOS {
    int id PK "Gerado automaticamente"
    varchar nome "Nome do produto"
    numeric valor "Preço so produto em R$"
    int estoque "Irá armazenar a quantidade de produtos no estoque"
 }
 ```
 Após modelar, iremos executar as etapas de criação e inserção de dados.
 
 ----
 Para criar a primeira tabela usamos so comandos:

 ```sql
 CREATE TABLE produtos(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);
```
Como podemos consultar a tabela, a principal forma é:
```sql
SELECT * FROM produtos;
```
Pra inserir dados na tabela, usamos o comando:
```sql
INSERT INTO produtos(nome,valor,estoque)
VALUES('Caneta','1.50','100');
```
----
# CRIAÇÃO DO MEU PRIMEIRO PROJETO SOLO

Comecei criando o Banco Cidades pelo MobaXTerm
![alt text](image.png)

Logo passei para o VSCODE Para iniciar a Tabela:

```sql
CREATE TABLE bigCity(
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nome VARCHAR(170) NOT NULL,
país VARCHAR(60) NOT NULL,
população FLOAT NOT NULL DEFAULT 0
);
```

Após eu escrever o CREATE TABLE com as informações acima,  minha tela ficou assim:

![alt text](image-1.png)

E então eu digitei INSERT INTO e VALUES e coloquei os valores:

![alt text](image-2.png)

E por fim o SELECT * FROM, para aparecer a tabela pronta:

![alt text](image-3.png)