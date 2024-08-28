# ibhj-box
 

# Meu Projeto Financeiro

## Pré-requisitos

- PostgreSQL 13+
- VSCode
- Extensão PostgreSQL para VSCode

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/dan1el-alme1da/ibhj-box.git
   cd ibhj-box

Este projeto é uma aplicação para gerenciar e controlar as finanças de ministérios utilizando um banco de dados PostgreSQL.

------------------Pré-requisitos-------------------------------------------
Antes de começar, certifique-se de ter os seguintes softwares instalados:

PostgreSQL (versão 12 ou superior): Documentação PostgreSQL
Visual Studio Code (VSCode): Download VSCode
Extensão PostgreSQL para VSCode: Extensão PostgreSQL
Instruções de Instalação
Instale o PostgreSQL:

Siga as instruções da documentação oficial do PostgreSQL para baixar e instalar o PostgreSQL no seu sistema operacional.

---------------------   Instale o Visual Studio Code:   -----------------------------------------

Baixe o VSCode a partir do site oficial e siga o processo de instalação.
Instale a Extensão PostgreSQL para VSCode:

Abra o VSCode, vá para a seção de extensões (ícone de quadrado no lado esquerdo) e procure por "PostgreSQL". Instale a extensão fornecida por ms-ossdata.

--------------------    Configuração do Banco de Dados   ----------------------------------------
Criação do Banco de Dados:

Abra o terminal do PostgreSQL e execute o seguinte comando para criar um banco de dados chamado bdibhj:
sql
Copiar código
CREATE DATABASE bdibhj;
Criação de Usuário e Concessão de Permissões:

Crie um usuário e conceda permissões ao banco de dados com os seguintes comandos:
sql
Copiar código
CREATE USER seu_usuario WITH PASSWORD 'sua_senha';
GRANT ALL PRIVILEGES ON DATABASE bdibhj TO seu_usuario;

---------------------   Execução dos Scripts   --------------------------------------------------
Preparação do Banco de Dados:

Execute os scripts SQL fornecidos para criar as tabelas e inserir dados no banco de dados. Você pode usar a interface de linha de comando do PostgreSQL ou uma ferramenta gráfica como o pgAdmin.
Para executar um script SQL a partir da linha de comando, utilize:
bash
Copiar código
psql -U seu_usuario -d bdibhj -f caminho/para/seu_script.sql

---------------------  Configuração do VSCode   ----------------------------
Abrir o Projeto:

Abra o VSCode e carregue a pasta do seu projeto.
Configuração da Extensão PostgreSQL:

No VSCode, abra a extensão PostgreSQL e configure a conexão com o seu banco de dados usando as credenciais que você criou anteriormente:
Host: localhost
Port: 5432 (ou a porta configurada para o seu PostgreSQL)
Database: bdibhj
User: seu_usuario
Password: sua_senha
Testar a Conexão:

Verifique se a conexão com o banco de dados está funcionando corretamente. Você deve ser capaz de visualizar e interagir com o banco de dados diretamente do VSCode.