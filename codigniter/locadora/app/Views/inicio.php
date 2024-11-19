<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Filme</title>
</head>
<body>
	<form action="/salvar" method="post" id="form1">
		<label for="idfilme">Código</label>
		<input type="text" name="idfilme" id="idfilme" readonly>

		<label for="idtitulo">Titulo</label>
		<input type="text" name="titulo" id="idtitulo">

		<label for="idDiretor">Diretor</label>
		<input type="text" name="diretor" id="idDiretor">

		<label for="idDuracao">Duração</label>
		<input type="number" name="duracao" id="idDuracao" >
		<input type="submit" value="enviar" form="form1">
	</form>
</body>
</html>