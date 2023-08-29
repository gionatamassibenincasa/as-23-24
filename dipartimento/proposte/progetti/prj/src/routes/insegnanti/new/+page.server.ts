import type { Actions } from './$types';

export const actions: Actions = {
	create: async ({ request }) => {
		const data = await request.formData();
		//console.log(data);
		let insertObject = {};
		for (const key of data.keys()) {
			insertObject[key] = data.get(key);
		}
		console.log(insertObject);
		const response = await fetch('http://localhost:8000/api/tables/Insegnante/rows', {
			method: 'POST',
			body: JSON.stringify({ fields: insertObject }),
			headers: {
				'Content-Type': 'application/json'
			}
		});

		const status = await response.status;
		console.log(status);
		return { status: status };
	}
};
