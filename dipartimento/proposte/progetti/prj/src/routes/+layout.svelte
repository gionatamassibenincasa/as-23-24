<script lang="ts">
	import '@picocss/pico/css/pico.css';
	import Nav from '$lib/components/Nav.svelte';
</script>

<header class="container">
	<Nav />
</header>
<main class="container">
	<slot />
</main>
<footer class="container" />
