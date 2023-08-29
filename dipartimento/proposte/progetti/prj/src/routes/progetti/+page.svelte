<script lang="ts">
	import Progetto from '$lib/components/progetti/Progetto.svelte';
	import SelezionaInsegnante from '$lib/components/progetti/SelezionaInsegnante.svelte';
	export let data;
</script>

<svelte:head>
	<title>Progetti - Elenco</title>
</svelte:head>

<h1>Progetti &mdash; Dip. Inf. &mdash; A.S. 2023-24</h1>

{#await data.streamed.progetti}
	<section id="loading">
		<h2>In caricamento</h2>
		<article aria-busy="true" />
		<button aria-busy="true">Attendi, per favore…</button>
	</section>
{:then progetti}
	{#each progetti.data as p}
		<section>
			<Progetto {...p} />
			<SelezionaInsegnante insegnanti={[{ cognome: 'Massi', id: 1 }]} />
		</section>
	{/each}
	<pre>{JSON.stringify(progetti, null, 2)}</pre>
{:catch error}
	<p>{error}</p>
{/await}
