<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GuarnieriStore</title>
</head>
<body>
    <?php if(session()->has("idusuario")):?>
        <p>

        <?=session("nome")?>
        <a href="/usuario/sair">sair</a>
        </p>

    <?php else:?>
    <a href="/usuario/cadastro">criar conta</a>
    <a href="/usuario/login">tenho conta</a>
    <?php endif; ?>

    <h1>Bem vindo a maior loja do Giovanni</h1>
    <h2> Minha roupa meu estilo</h2>

    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis quasi molestiae necessitatibus nobis corporis facilis alias minima dolores aperiam beatae. Nisi quisquam et suscipit autem illo? Reiciendis hic laboriosam minus.
    Magni, ad in. Doloremque cumque illo dolor explicabo aspernatur atque est officiis, quos commodi ullam, vitae dolore voluptatibus debitis porro reprehenderit nihil aut ut vel reiciendis tenetur sit esse! Neque?
    Natus, quaerat quisquam numquam labore dolor delectus consequatur praesentium? Mollitia quisquam doloribus qui quasi sint magni in inventore illum porro, ex necessitatibus quibusdam. Repellat obcaecati velit ipsam, nam mollitia odio!
    Non numquam quaerat itaque reiciendis inventore, accusamus ea libero natus nulla recusandae necessitatibus voluptatibus distinctio veritatis optio modi mollitia atque labore molestias. Fugiat, consequatur? Rem nulla laborum at repellendus quas.
    Quas, labore totam ullam molestias est et nostrum natus, nihil vitae quae eveniet quia voluptate illo porro praesentium atque? Similique culpa eveniet maiores nesciunt suscipit porro ipsa iusto officiis tenetur.</p>
</body>
</html>