# Atividade Select

> Nesta atividade, você deve realizar o SELECT de três tabelas.

### 🖥️ Execução

- [ ] Tarefa 1: realizar a listagem na tabela Aluno
- [ ] Tarefa 2: realizar a listagem na tabela Professor
- [ ] Tarefa 3: realizar a listagem na tabela Curso

## 💻 Pré-requisitos

Você está recebendo o arquivo SQL, contendo a base de dados inteira (três tabelas).

> [!TIP]
> O primeiro passo deve ser a importação da base de dados.

> [!IMPORTANT]
> Não esqueça de hospedar os arquivos no WAMP Server.

## 📖 Referências
- ObjetoPDO->query('Instrução SQL'): prepara e executa uma instrução SQL e e retorna um objeto de instrução, geralmente chamado $stmt. Utilizada quando o usuário não interage com a aplicação.
    Ex.: $stmt = $conn->query("SELECT * FROM tbl_contatos");
- $stmt->fetchAll(Modo): retorna as linhas de um conjunto de resultados. Modo define o formato desse retorno, utiliza-se PDO::FETCH_OBJ. Este modo retornará cada linha como um objeto com nomes de propriedades que correspondam aos nomes das colunas retornados no conjunto de resultados. Ex.: 
$stmt->fetchAll(PDO::FETCH_OBJ) poderia retornar $carro->modelo, $aluno->nome, $cliente->cpf, etc.