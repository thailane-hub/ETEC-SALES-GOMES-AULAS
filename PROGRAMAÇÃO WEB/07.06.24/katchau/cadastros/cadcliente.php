<!DOCTYPE html>
<html>
<head>
	<title>Katchau 9&#9889;5</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
	<script src="../assets/js/jquery.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background: #FD2F4C">
		<a class="navbar-brand" href="#"><img src="../assets/img/relampago-marquinhos.png" width="50" alt="Relâmpago Marquinhos"></a>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
                <a href="../" class="nav-item nav-link active" style="color: #faff00;font-size: 18px;font-weight: bold">Katchau 9 <i class="fas fa-bolt" style="color: #faff00"></i> 5<span class="sr-only">(current)</span></a>
				<a href="./" class="nav-item nav-link">Cadastros</a>
				<a href="../listagens/" class="nav-item nav-link">Listagem</a>
			</div>
		</div>
	</nav>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron" style="color: #FD2F4C !important">
                    <div class="d-flex justify-content-between">
                        <h1>Cadastro de clientes</h1>
                        <a href="./" class="text-danger" style="font-size: 32px"><i class="far fa-arrow-alt-circle-left"></i></a>
                    </div>
                    <form action="functions/func_cadcliente.php" method="POST">
                        <div class="form-group" id="nome"><label for="nome">Nome</label>
                            <input type="text" class="form-control" name="nome" id="nome">
                        </div>
                        <div class="form-group" id="endereco"><label for="endereco">Endereço</label>
                            <input type="text" class="form-control" name="endereco" id="endereco">
                        </div>
                        <div class="form-group" id="email"><label for="email">E-mail</label>
                            <input type="email" class="form-control" name="email" id="email">
                        </div>
                        <button type="submit" class="btn btn-outline-danger rounded-circle btn-lg mx-5"><i class="fas fa-plus"></i></button>
                        <button type="reset" class="btn btn-outline-danger rounded-circle btn-lg"><i class="fas fa-ban"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>