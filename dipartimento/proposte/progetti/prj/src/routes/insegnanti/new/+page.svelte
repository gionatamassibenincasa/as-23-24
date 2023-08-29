<script lang="ts">
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';
	export let form;
	// export const prerender = false;
	let creating = false;
</script>

<h1>Nuovo insegnante</h1>

{#if form && form.status >= 200 && form.status <= 299}
	<dialog open>
		<article>
			<header>
				<p>
					<strong>Inserimento avvenuto con successo!</strong>
				</p>
			</header>
			<botton on:click={() => goto('/insegnanti')}>Chiudi</botton>
		</article>
	</dialog>
{/if}

<form
	method="post"
	action="?/create"
	use:enhance={() => {
		creating = true;

		return async ({ update }) => {
			await update();
			creating = false;
		};
	}}
>
	<fieldset>
		<label
			>Cognome
			<input type="text" name="cognome" placeholder="Cognome" />
		</label>
		<label
			>Nome
			<input type="text" name="nome" placeholder="Nome" />
		</label>
	</fieldset>
	<button type="submit" disabled={creating}>Nuovo</button>
	<button type="reset">Ripristina</button>
</form>
