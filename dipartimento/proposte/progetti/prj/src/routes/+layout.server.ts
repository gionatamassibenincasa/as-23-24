export const prerender = false;

export const load = async () => {
	// Carica tutte le tabelle usare come ENUMERAZIONI e quelle che non cambiano quasi mai
	const insegnanti = await fetch(`http://localhost:8000/api/tables/Insegnante/rows?_limit=100`)
		.then((response) => {
			return response.json();
		})
		.catch((error) => {
			console.log(error);
			return error;
		});
	const priorita = await fetch(`http://localhost:8000/api/tables/Priorita/rows?_limit=100`)
		.then((response) => {
			return response.json();
		})
		.catch((error) => {
			console.log(error);
			return error;
		});
	const tipoProgetto = await fetch(`http://localhost:8000/api/tables/TipoProgetto/rows?_limit=100`)
		.then((response) => {
			return response.json();
		})
		.catch((error) => {
			console.log(error);
			return error;
		});
	const ret = { insegnanti, priorita, tipoProgetto };
	//console.log(ret);
	return ret;
};
