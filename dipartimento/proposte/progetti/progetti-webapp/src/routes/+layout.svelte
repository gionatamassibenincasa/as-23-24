<script>
	import '../app.postcss';
	import { Navbar, NavBrand, NavHamburger, NavLi, NavUl } from 'flowbite-svelte';
</script>

<Navbar let:hidden let:toggle color="primary">
	<NavHamburger on:click={toggle} />
	<NavUl {hidden}>
		<NavLi href="/" active={true}>Home</NavLi>
		<NavLi href="/progetti">Progetti</NavLi>
	</NavUl>
</Navbar>

<slot />
