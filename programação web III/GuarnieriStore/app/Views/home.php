<!DOCTYPE html>
<html lang="pt-br">
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

    <?php else: ?>

    <a href="/usuario/cadastro">Criar Conta</a>
    <a href="/usuario/login">Já tenho Conta</a>
    
    <?php endif; ?>


    <h1>Bem-vindo a maior loja do Giovanni</h1>
    <h2>Minha roupa meu estilo</h2>

    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Itaque, facilis est? Aut maxime dolor a corrupti veniam, facilis ducimus itaque obcaecati dolore odio exercitationem sequi pariatur quia et eius delectus?
    Officia animi dolorum esse repudiandae. Dolores voluptas harum esse quae unde dolore qui fuga iste sint, voluptate quidem non tempore ad suscipit. Iure quam, tempore ducimus illum ullam ad cum?
    Quis in impedit voluptate ipsa quisquam ex facere excepturi minima eius magnam non modi at nihil ab et, voluptatum consequatur voluptates cupiditate exercitationem incidunt odit veniam illum, molestias aliquid. Reiciendis.
    Exercitationem cum officiis magni placeat fuga fugiat, veniam eveniet quae pariatur maiores repellat saepe tempore numquam veritatis vitae nam accusantium maxime ea voluptate modi quisquam. Fuga sapiente necessitatibus accusantium temporibus!
    Dignissimos, est, quibusdam totam sunt consequuntur quisquam maiores repudiandae vel voluptas voluptatibus perspiciatis fuga cumque aperiam tenetur exercitationem repellat excepturi tempora similique reiciendis! Veniam, repudiandae sint! Dolorem dolorum nihil odit.</p>

</body>
</html>