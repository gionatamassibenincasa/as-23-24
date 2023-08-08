<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<section class="bg-gray-50 dark:bg-gray-900 p-3 sm:p-5 antialiased">
	<div class="mx-auto max-w-screen-xl px-4 lg:px-12">
		<p>Da fare:</p>

		<ol>
			<li>1. Scegliere quali progetti presentare</li>
			<li>2. Definire fasi e risorse per i progetti scelti</li>
			<li>3. Registrare scuola e referente per progetti con partner</li>
			<li>4. Collocare nel tempo i progetti</li>
			<li>5. Predisporre circolari e mail ai destinatari per ogni progetto</li>
		</ol>

		<hr />

		<h1 class="text-xl font-medium text-gray-900 dark:text-white">
			Progetti da valutare per presentazione al Collegio Docenti
		</h1>

		{#each data.progetti.data as p}
			<div style="break-inside: avoid;">
				<h2 class="text-xl font-medium text-gray-900 dark:text-white m-6">{p.denominazione}</h2>
				<p><span class="font-light">Id: </span> {p.id}</p>
				<p class="font-light">
					<span class="font-light">Codice: </span>
					{p.codice}
				</p>

				<p>
					<span class="font-light">Tipo: </span>
					{p.tipo}
				</p>
				<p>
					<span class="font-light">Sito: </span>
					{#if p.website}
						<a href={p.website}>{p.website}</a>
					{:else}
						Nessun riferimento
					{/if}
				</p>
				<p class="my-8"><span class="font-light">Descrizione: </span>{p.considerazioni}</p>

				<hr />
			</div>
		{/each}
	</div>
</section>

<!--
<Table striped={true}>
	<TableHead>
		<TableHeadCell>id</TableHeadCell>
		<TableHeadCell>Codice</TableHeadCell>
		<TableHeadCell>Denominazione</TableHeadCell>
		<TableHeadCell>Tipo</TableHeadCell>
		<TableHeadCell>Priorità</TableHeadCell>
		<TableHeadCell>Considerazioni</TableHeadCell>
		<TableHeadCell>WebSite</TableHeadCell>
	</TableHead>
	<TableBody>
		{#each data.progetti.data as p}
			<TableBodyRow>
				<TableBodyCell>{p.id}</TableBodyCell>
				<TableBodyCell>{p.codice}</TableBodyCell>
				<TableBodyCell tdClass="px-6 py-4 font-medium">{p.denominazione}</TableBodyCell>
				<TableBodyCell tdClass="px-6 py-4 font-medium">{p.tipo}</TableBodyCell>
				<TableBodyCell>{p.priorita}</TableBodyCell>
				<TableBodyCell tdClass="px-6 py-4 font-medium">{p.considerazioni}</TableBodyCell>
				<TableBodyCell tdClass="px-6 py-4 font-medium"
					>{#if p.website}
						<a href={p.website}>{p.website}</a>
					{/if}</TableBodyCell
				>
			</TableBodyRow>
		{/each}
	</TableBody>
</Table>

<pre><code>{JSON.stringify(data.progetti.data, null, 2)}</code></pre>
<table>
	<thead>
		<th>id</th>
		<th>Codice</th>
		<th>Denominazione</th>
		<th>Tipo</th>
		<th>Considerazioni</th>
	</thead>
	<tbody>
		{#each data.progetti.data as p}
			<tr>
				<td>{p.id}</td>
				<td>{p.codice}</td>
				<td>{p.denominazione}</td>
				<td>{p.tipo}</td>
				<td>{p.considerazioni}</td>
			</tr>
		{/each}
	</tbody>
</table>
-->
