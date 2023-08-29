<script lang="ts">
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';
	import { page } from '$app/stores';

	export let nome = '<Nome>';
	export let cognome = '<Cognome>';

	$: if (data.insegnante && data.insegnante.data) {
		nome = data.insegnante.data[0].nome;
		cognome = data.insegnante.data[0].cognome;
	}
	export let data;
	export let form;

	$: if (form) {
		if (form.status >= 200 && form.status <= 299) goto('/insegnanti');
	}
</script>

<h1>Elimina insegnante</h1>

<dialog open>
	<article>
		<header>
			<h3>
				<strong>Sei sicuro?</strong>
			</h3>
		</header>
		<p>Elimino il prof. {cognome} {nome}?</p>
		<footer>
			<form method="post" action="?/delete" use:enhance>
				<input hidden name="id" type="number" value={$page.params.id} />
				<button type="reset" on:click={() => goto('/insegnanti')}>Annulla</button>
				<button type="submit">Elimina</button>
			</form>
		</footer>
	</article>
</dialog>
