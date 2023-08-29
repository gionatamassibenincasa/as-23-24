import type { Actions, PageServerLoad } from './$types';

export const load: PageServerLoad = ({ params }) => {
	const insegnante = fetch(`http://localhost:8000/api/tables/Insegnante/rows/${params.id}`)
		.then((response) => {
			return response.json();
		})
		.catch((error) => {
			console.error(error);
			return error;
		});

	return { insegnante };
};

export const actions: Actions = {
	delete: async ({ request, params }) => {
		console.log(`delete insegnante ${params.id}`);
		const data = await request.formData();
		console.log(data);
		const response = await fetch(`http://localhost:8000/api/tables/Insegnante/rows/${params.id}`, {
			method: 'DELETE'
		});

		const status = await response.status;
		console.log(status);
		return { status: status };
	}
} satisfies Actions;
