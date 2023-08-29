<script lang="ts">
	export let id: number;
	export let codice: string;
	export let denominazione: string;
	export let responsabile: string;
	export let considerazioni: string;
	export let tipo: string;
	export let website: string;
	export let priorita: string;
</script>

<article>
	<header>
		<div class="grid">
			<div>
				<span class="label">Id: </span>
				{id}
			</div>
			<div>
				<span class="label">Codice: </span>
				{codice}
			</div>
			<div>
				<span class="label">Priorità: </span>
				{priorita}
			</div>
			<div>
				<span class="label">Tipo: </span>
				{tipo}
			</div>
		</div>
		<div class="grid">
			<div><span class="label">Denominazione: </span><strong>{denominazione}</strong></div>
		</div>
	</header>
	<main>
		<div>
			<span class="label">Considerazioni: </span>
			{considerazioni}
		</div>
		<div>
			<span class="label">Responsabile: </span>
			{responsabile}
		</div>
		{#if website}
			<div>
				<span class="label">Sito web: </span>
				<a href={website}>{website}</a>
			</div>
		{/if}
	</main>
	<footer>
		<button>Modifica</button>
		<button>Elimina</button>
		<button>Nuovo</button>
	</footer>
</article>

<style>
	article {
		page-break-inside: avoid;
	}
</style>
