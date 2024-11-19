# Banco de Dados
CREATE DATABASE locadora;
USE locadora;

```
CREATE TABLE filme(
    idfilme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    diretor VARCHAR(50),
    duracao INT
)Engine=InnoDB;
```

## Criar projeto

```
composer create-project codeigniter4/appstarter locadora
```

## Criar uma View

Views/inicio.php

Essa view deverá conter um formulário de cadastro de filme com os campos: idfilme, titulo, diretor, duracao. Esse formulário, enviará os dados para a action /salvar via POST. 

## Criar uma Controller chamada FilmeController

```
php spark make:controller FilmeController
```

Nessa controller, deverá ter a action index e a action salvar.

## Ajustar arquivo app/config/routes.php

Definir as seguintes rotas

```

$routes->get("/", "FilmeController::index");
$routes->post("/salvar", "FilmeController::index");

```

## Criar Model Filme

```
php spark make:model FilmeModel
```

Configurar Model: $table, $primaryKey e o $allowedFields=["nome", "descricao"];

## Configurar de env -> .env (renomear)

```
CI_ENVIRONMENT = development

-----

database.default.hostname = 127.0.0.1
database.default.database = todo
database.default.username = root
database.default.password = 
```

*Não esquecer de descomentar essas linhas acima*

# Alteração na Controller FilmeController

Importar a Model Filme:
```
use App\Models\FilmeModel;

```

A action index() precisa retornar a view "inicio".
A action salvar() precisa salvar os dados do filme via model.

Código de exemplo para salvar os dados

```
        $dados = $this->request->getPost();
        $categoriaModel = new CategoriaModel();
        $categoriaModel->insert($dados);
        echo "Sucesso";
```






