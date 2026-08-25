## Aula 02 - Inicío das configurações do banco de dados
Para verificar o status e demais informações do Banco de Dados, utilizamos o comando:

```bash
pg_lsclusters
```

![](image.png)
----

Para acesso via root sem senha, o famoso SOCKET LOCAL, utilizamos o comando:

```bash
sudo -u postgres psql
```

Com esse comando, não preciso mostrar quem meu usuário é, o Linux já faz autentificação. (Ele vou ao usuário anterior, o famoso quit que os games dizem durante as partidas)

```bash
\q 
```

----

Pra a alteração de senha ao usuário POSTGRES, utilizamos o comando:

```bash
ALTER USER postgres PASSWORD 'senha';
```

Após alteração da senha, o acesso, via localhost (SOCKET EXTERNO), é feito através do comando:

```bash
sudo psql -h 127.0.0.1 -U postgres
```

Configurações iniciais do Postgres:
- Para habilitar conexões externas, de outros IPs, foi necessário as seguintes etapas:
1. Navegar até a pasta do POSTGRESQL (`/etc/postgres/18/main/`).
2. Editar o arquivo `postgresql.conf`através do comando:

```bash
sudo nano postgresql.conf
```
3. Editar a linha listen_adresses = '*';
4. Editar o arquivo pg.hbs.conf
5. Nas ultimas linhas, adicionamos as seguintes configurações:

![alt text](image-1.png)

**Criação do primeiro Banco de Dados**

```mermaid
graph TD
A[(Banco de Dados)]
```
Para criar o banco de dados nos utilizamos o comando:

```sql
CREATE DATABASE cidades;
```
E para verificar os bancos existentes:

```sql
\l
```
