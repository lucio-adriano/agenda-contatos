/**
 * Validador campos obrigatorios de formulario
 * @author Adriano Lucio
 */

function validar() {
	const formContato = document.forms["formContato"];
	const nome = formContato["nome"].value;
	const fone = formContato["fone"].value;

	if (nome === "") {
		alert("Nome obrigatorio");
		formContato.nome.focus();
		return false;
	}

	if (fone === "") {
		alert("Telefone obrigatorio");
		formContato.fone.focus();
		return false;
	}

	document.forms["formContato"].submit();
}