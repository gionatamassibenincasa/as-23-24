<script lang="ts">
	import { goto } from '$app/navigation';
	import { page } from '$app/stores';
	import type { PageData } from './$types';
	export let data: PageData;
	let insegnanti = data.insegnanti.data;
	export let del: boolean = false;
</script>

<table>
	<thead>
		<tr>
			<th>Id</th>
			<th>Cognome</th>
			<th>Nome</th>
			<th>Azioni</th>
		</tr>
	</thead>
	<tbody>
		{#each insegnanti as i}
			<tr>
				<th>{i.id}</th>
				<td>{i.cognome}</td>
				<td>{i.nome}</td>
				<td>
					<button class="modifica" data-tooltip="Modifica">📝</button>
					<button
						class="elimina"
						data-tooltip="Elimina"
						on:click={() => goto(`/insegnanti/delete/${i.id}/`)}>🗑️</button
					>
					<button class="aggiungi" data-tooltip="Nuovo" on:click={() => goto('/insegnanti/new')}
						>➕</button
					>
				</td>
			</tr>
		{/each}
	</tbody>
</table>

{#if del}
	<dialog open={true}>
		<article>
			<h3>Confirm your action!</h3>
			<p>
				Are you sure you want to delete the item? You will lose all related data and this operation
				is irreversible:
			</p>
			<footer>
				<a href="#cancel" role="button" class="secondary">Cancel</a>
				<a href="#confirm" role="button">Delete</a>
			</footer>
		</article>
	</dialog>
{/if}

<style>
	.modifica {
		background-color: coral;
	}
	.elimina {
		background-color: crimson;
	}
</style>
