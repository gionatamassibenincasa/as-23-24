import type { PageLoad } from './$types';

const table = 'vista_progetti';
export const load = (async ({ params }) => {
	const res = await fetch(`http://localhost:8000/api/tables/${table}/rows?_limit=50`);
	const progetti = await res.json();

	return { progetti };
}) satisfies PageLoad;
