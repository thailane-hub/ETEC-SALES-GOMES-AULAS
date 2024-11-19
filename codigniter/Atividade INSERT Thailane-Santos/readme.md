# Atividade Insert

> Nesta atividade, você deve realizar o INSERT de três tabelas.

### 🖥️ Execução

- [ ] Tarefa 1: realizar o cadastro na tabela Aluno
- [ ] Tarefa 2: realizar o cadastro na tabela Professor
- [ ] Tarefa 3: realizar o cadastro na tabela Curso


## 💻 Pré-requisitos

Você está recebendo o arquivo SQL, contendo a base de dados inteira (três tabelas).

> [!TIP]
> O primeiro passo deve ser a importação da base de dados.

> [!IMPORTANT]
> Não esqueça de hospedar os arquivos no WAMP Server.


## ⚠️ Atenção
- Em todos os formulários, o atributo action está em branco. Não esqueça de criar a página que vai receber a requisição e colocá-la no atributo action

## 📖 Referências
- new PDO: Cria uma instância PDO representando uma conexão a um banco de dados. Deve ser armazenado em um objeto, tornando-se um ObjetoPDO
  Necessita de 3 parâmetros para funcionar: dsn, username, password
    dsn: nome da fonte de dados que contém a informação requerida para conexão ao banco de dados -> 'driver:dbname=nome_banco;host=local_hospedagem'
    username: nome de usuário para a string DSN
    password: senha para a string DSN
    Ex.: $conn = new PDO(dsn,username,password);
- require_once 'caminho do arquivo': inclui o arquivo informado no caminho do arquivo.
- ObjetoPDO->prepare('Instrução SQL'): prepara uma instrução para execução de uma instrução SQL e retorna um objeto de instrução, geralmente chamado $stmt. Utilizado sempre que o usuário interage com a aplicação.
    Ex.: $stmt = $conn->prepare("INSERT INTO tbl_contatos VALUES(0,:nome,:email,:telefone)");
- $stmt->bindValue('alias', $variavel): vincula um valor a um parâmetro (alias) na instrução SQL que foi usada para preparar a instrução. Alias podem ser prefixados com dois-pontos ":" também. 
    Ex.:  $stmt->bindValue(":nome",$campoNome);
          $stmt->bindValue(":email",$campoEmail);
          $stmt->bindValue(":telefone",$campoTelefone);
- $stmt->execute(): executa uma instrução preparada.