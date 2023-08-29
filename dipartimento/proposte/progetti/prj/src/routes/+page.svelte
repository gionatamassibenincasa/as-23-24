<script lang="ts">
	export let mostra = false;
	const apri = () => (mostra = true);
	const chiudi = () => (mostra = false);
</script>

<svelte:head>
	<title>Progetti - Home</title>
</svelte:head>

<button on:click={apri}>Apri</button>

<dialog open={mostra}>
	<article>
		<header>
			<a href="/" aria-label="Close" class="close" />
			<p>
				<strong>🗓️ Thank You for Registering!</strong>
			</p>
		</header>
		<p>
			We're excited to have you join us for our upcoming event. Please arrive at the museum on time
			to check in and get started.
		</p>
		<ul>
			<li>Date: Saturday, April 15</li>
			<li>Time: 10:00am - 12:00pm</li>
		</ul>
		<footer>
			<button class="secondary"> Cancel </button>
			<button on:click={chiudi}>Confirm</button>
		</footer>
	</article>
</dialog>
