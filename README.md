# Agenda de Contatos

Este projeto é uma aplicação web simples para gerenciar uma agenda de contatos. Ele permite adicionar, visualizar, editar e excluir contatos, além de gerar um relatório em PDF com a lista de contatos cadastrados.

## Funcionalidades

- **Adicionar Contato**: Permite adicionar um novo contato com informações como nome, telefone e e-mail.
- **Listar Contatos**: Exibe todos os contatos cadastrados em uma tabela.
- **Editar Contato**: Permite editar as informações de um contato existente.
- **Excluir Contato**: Remove um contato da agenda.
- **Gerar Relatório em PDF**: Gera um relatório em PDF com a lista de contatos.

## Tecnologias Utilizadas

- **Java**: Linguagem de programação principal.
- **Servlets**: Para o controle das requisições e respostas HTTP.
- **JSP (JavaServer Pages)**: Para a criação das páginas web dinâmicas.
- **iText**: Biblioteca para geração de PDFs.
- **HTML/CSS**: Para a estruturação e estilização das páginas web.
- **MariaDB**: Banco de dados para armazenar os contatos.

## Pré-requisitos

- **Java Development Kit (JDK)**: Versão 8 ou superior.
- **Apache Tomcat**: Servidor web para executar a aplicação.
- **MariaDB**: Banco de dados para armazenar os contatos.

## Configuração do Projeto

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/seu-usuario/agenda-contatos.git
   cd agenda-contatos
   ```

2. **Configure o banco de dados**:
   - Crie um banco de dados chamado `dbagenda` no MariaDB.
   - Execute o seguinte script SQL para criar a tabela de contatos:
     ```sql
     CREATE TABLE contatos (
         id INT AUTO_INCREMENT PRIMARY KEY,
         nome VARCHAR(100) NOT NULL,
         telefone VARCHAR(20) NOT NULL,
         email VARCHAR(100) NOT NULL
     );
     ```

3. **Configure as credenciais do banco de dados**:
   - Edite a classe `DAO` para garantir que as credenciais do banco de dados estejam corretas:
     ```java
     private String driver = "org.mariadb.jdbc.Driver";
     private String url = "jdbc:mariadb://localhost:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
     private String user = "root";
     private String password = "";
     ```

4. **Compile o projeto**:
   - Compile o projeto usando sua IDE favorita ou o comando `javac`.

5. **Implante a aplicação no Tomcat**:
   - Copie o arquivo `.war` gerado para a pasta `webapps` do Tomcat.
   - Inicie o servidor Tomcat.

## Executando a Aplicação

1. Acesse a aplicação no navegador:
   ```
   http://localhost:8080/agenda-contatos
   ```

2. Use a interface para adicionar, editar, excluir e visualizar contatos.

3. Para gerar o relatório em PDF, clique no botão "Gerar Relatório" na página de listagem de contatos.

## Estrutura do Projeto
```
/agenda-contatos/
└── src/
    └── main/
        ├── java/
        │   ├── controller/
        │   │   └── Controller.java          # Servlet para gerenciar requisições
        │   └── model/
        │       ├── DAO.java                 # Classe de acesso ao banco de dados
        │       └── JavaBeans.java           # Classe de modelo (contato)
        └── webapp/
            ├── WEB-INF/
            │   └── web.xml                  # Configurações do servlet
            ├── css/
            │   └── style.css                # Arquivo CSS para estilização
            ├── js/
            │   ├── confirmador.js           # Script para confirmar ações (ex: exclusão)
            │   └── validador.js             # Script para validação de formulários
            ├── agenda.jsp                   # Página principal para listar contatos
            ├── editar.jsp                   # Página para editar um contato
            ├── index.html                   # Página inicial (redirecionamento)
            ├── novo.html                    # Página para adicionar um novo contato
            └── style.css                    # Estilos CSS
```
## Contribuição

Contribuições são bem-vindas! Siga os passos abaixo:

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -m 'Adicionando nova feature'`).
4. Push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Contato

Se tiver dúvidas ou sugestões, entre em contato:

- **GitHub**: [seu-usuario](https://github.com/lucio-adriano)

    
