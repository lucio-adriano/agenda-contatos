/**
 * Confirmar exclusao de um contato
 * @author Adriano Lucio
 * @param id
 */

function confirmar(id) {
	const resposta = confirm("Confirma a exlusão deste contato ?")
	if (resposta === true) {
		window.location.href = "delete?id=" + id;
	}
}