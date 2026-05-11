<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';
	import "../app.css";
	let { children } = $props();

  import { afterNavigate } from "$app/navigation";

  afterNavigate(() => {
    // Runs after navigating between pages
    HSStaticMethods.autoInit();
  });
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

{@render children()}
