<script lang="ts">
	import { browser } from '$app/environment';
	import { THEMES } from '$lib/config';
	import { onMount } from 'svelte';

	let isLightTheme: boolean;
	let current_theme: string;

	let toggleButtonClasses: string;

	onMount(() => {
		current_theme = document.documentElement.getAttribute('data-theme') ?? 'errore';
		console.log('onMount: current_theme = ' + current_theme);
		isLightTheme = current_theme === THEMES.LIGHT;
		toggleButtonClasses = isLightTheme ? 'theme-toggle' : 'theme-toggle theme-toggle--toggled';
	});

	function set_theme(theme: string) {
		console.log(`called: set_theme(${theme})`);
		if (!Object.values(THEMES).includes(theme)) return;
		console.log('set_theme: OK');
		localStorage.setItem('theme', theme);
		document.documentElement.setAttribute('data-theme', theme);
		current_theme = theme;
		isLightTheme = current_theme === THEMES.LIGHT;
		toggleButtonClasses = isLightTheme ? 'theme-toggle' : 'theme-toggle theme-toggle--toggled';
	}

	function toggle_theme(): void {
		if (browser) {
			let current_theme = document.documentElement.getAttribute('data-theme');
			const theme = current_theme === THEMES.LIGHT ? THEMES.DARK : THEMES.LIGHT;
			set_theme(theme);
		}
	}
</script>

<nav>
	<ul>
		<li>
			<a href="/">Home</a>
		</li>
		<li>
			<a href="/progetti">Progetti</a>
		</li>
		<li>
			<a href="/insegnanti">Insegnanti</a>
		</li>
		<li>
			<a href="/nasa">Immagine del giorno</a>
		</li>

		<li>
			<button
				title="Toggle theme"
				aria-label="toggle theme"
				on:click={toggle_theme}
				class={toggleButtonClasses}
			>
				<svg
					xmlns="http://www.w3.org/2000/svg"
					aria-hidden="true"
					width="1em"
					height="1em"
					fill={isLightTheme ? 'black' : 'white'}
					stroke-linecap="round"
					class="theme-toggle__classic"
					viewBox="0 0 32 32"
				>
					<clipPath id="theme-toggle__classic__cutout">
						<path d="M0-5h30a1 1 0 0 0 9 13v24H0Z" />
					</clipPath>
					<g clip-path="url(#theme-toggle__classic__cutout)">
						<circle cx="16" cy="16" r="9.34" />
						<g stroke={isLightTheme ? 'black' : 'white'} stroke-width="1.5">
							<path d="M16 5.5v-4" />
							<path d="M16 30.5v-4" />
							<path d="M1.5 16h4" />
							<path d="M26.5 16h4" />
							<path d="m23.4 8.6 2.8-2.8" />
							<path d="m5.7 26.3 2.9-2.9" />
							<path d="m5.8 5.8 2.8 2.8" />
							<path d="m23.4 23.4 2.9 2.9" />
						</g>
					</g>
				</svg>
			</button>
		</li>
	</ul>
</nav>
