const key = 'jcB9QShEe2Or1voYzltGfN2u3zJvD2iz5eqF4bE0'; // your API key here

export function load() {
	const pic = fetch(`https://api.nasa.gov/planetary/apod?api_key=${key}`).then((response) => {
		console.log('got response');
		return response.json();
	});
	return { pic };
}
