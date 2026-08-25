# Configurações do Servidor

```mermaid
graph LR
A[Cliente]<--Dados-->B[Servidor]
```
---
**Objetivo**:
- Experiência real de mercado;
- Administraçãode recursos;
- Experiência em servidores Linux.

## Servidor de arquivos
Servidor educacional para arquivar, assim não dependendo de rede externa.

```mermaid
graph TD
A[Servidor Senai] --Arquivos--> B[Computador] 
```

----------
## Servidor de Desenvolvimento
Cada aluno recebe seu próprio acesso. Cada máquina, possui um endereço diferente.

### Dados do computador:
|Recurso|Configuração|
|-------|------------|
|CPU|2 cores|
|RAM|512 MB|
|DISCO|6 GB|
|SISTEMA OPERACIONAL|Ubutu 26.04 LS|
|ACESSO|SSH|

### Dados de acesso:
|CAMPO|VALOR|
|-----|-----|
|IP CONTAINER|192.168.10.13|
|USUÁRIO|ROOT|
|SENHA INICIAL| aluno01|

Comando para vizualizar uso de recursos:

```bash
htop
```

Comando para Alterar a senha:

```bash
Passwd
```

## Banco de Dados
- Dados: informações isoladas que não indicam nada exatamente.
ex. Catarina, Futebol, Corinthians, Camisa.
- Informações: A Catarina comprou uma camisa do corinthians.
- Conhecimento: Podemos dizer que talvez a Catarina comprou uma camisa do Corinthians.

```mermaid
graph LR
A[Dado: Camisa]-->B[Processamento]-->C[Informação: A cliente comprou a camisa]
```

----
O fluxo normal de um banco de dados, está representado a seguir:
```mermaid
graph LR
A[Usuário]-->B[Aplicação]-->C[(Banco de Dados)]
```
Por qual razão, as empresas não salvam os dados em arquivos comuns?


```mermaid
graph TD
A[Guardar Dados]-->B[Banco de dados]
A[Guardar Dados]-->C[Arquivos/Planilhas]
B-->B1[Varios usuários ao mesmo tempo]
B-->B2[Backup e sincronização]
B-->B3[Consultas otimizadas/rápidas]
C-->C1[Um arquivo por vez]
C-->C2[Backup ineficiente]
```
----

## SGBD
#### Sistema Gerenciador de Banco de Dados

```bash
POSTGRESQL: SGBD OpenSource e muito completo
```

Primeito, começamos atualizando os pacotes:

```bash
sudo apt update && upgrade
```

----
Pra a instalação do Postgresql:

```bash
sudo apt install -y postgresql
```


