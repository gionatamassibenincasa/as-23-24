import type { PageServerLoad } from './$types';

export const load: PageServerLoad = (() => {
	const progetti = fetch(`http://localhost:8000/api/tables/vProgettoPerPriorita/rows?_limit=100`)
		.then((response) => {
			return response.json();
		})
		.catch((error) => {
			console.log(error);
			return error;
		});

	return {
		streamed: {
			progetti: new Promise((resolve) => {
				progetti
					.then((data) => {
						return resolve(data);
					})
					.catch((error) => {
						console.log(error);
					});
			})
		}
	};
}) satisfies PageServerLoad;
