<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login de Usuario</title>

    <style>
        .sucesso{
            color: green;
        }

        .aviso{
            color: red;
        }
    </style>

</head>

<body>

    <?php if (session()->has("sucesso")): ?>
        <p class="sucesso"> <?= session("sucesso") ?> </p>
    <?php endif; ?>

    
    <?php if (session()->has("aviso")): ?>
        <p class="aviso"> <?= session("aviso") ?> </p>
    <?php endif; ?>


    <h1>Entrar com sua conta</h1>
    <form action="/usuario/logar" method="post">
        <div>
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required>
        </div>
        <div>
            <label for="senha">Senha</label>
            <input type="password" name="senha" id="senha" required>
        </div>
        <button type="submit">Entrar</button>
        <button type="reset">Limpar</button>
    </form>

    <a href="/usuario/cadastro">Criar conta</a> <br />
</body>

</html>