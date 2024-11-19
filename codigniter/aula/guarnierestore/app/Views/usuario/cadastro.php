<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cadastro de usuario</title>
</head>

<style>
    .aviso{
        color: red;
    }
</style>
<body>

    <?php if (session()->has("aviso")):?>

        <p class="aviso"><?= session("aviso")?></p>

    <?php endif; ?>

    <h1>Faça parte da nossa loja</h1>
    <form action="/usuario/novo"  method="post">
        <div>
            <label for="nome"> Nome</label>
            <input type="text" name="nome" id="nome" minlength="3"  required>
        </div>

        <div>
            <label for="email"> Email</label>
            <input type="email" name="email" id=" email" required>
        </div>

        <div>
            <label for="senha"> Senha</label>
            <input type="password" name="senha" id="senha" required>
        </div>

        <div>
            <label for="repetirsenha">Repetir senha</label>
            <input type="password" name="repetirsenha" id="repetirsenha" required>
        </div>

        <div>
            <button type="submit">cadastrar</button>
            <button type="reset">limpar</button>
        </div>

        <a href="/usuario/login">Já possuo conta</a>
    </form>
</body>
</html>