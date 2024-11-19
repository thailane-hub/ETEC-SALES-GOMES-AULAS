const modal = new bootstrap.Modal('#confirmacao', {});
const linkExcluir = document.getElementById("link-excluir");

function confirmarExclusao(id){
    modal.show();
    linkExcluir.setAttribute("href", `./modulos/categoria/excluir.php?id=${id}`)
}
