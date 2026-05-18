<script lang="ts">
	import { app } from '$lib/config';
	import Footer from '$lib/components/Footer.svelte';
	import FaqItem from '$lib/components/landing/FaqItem.svelte';

	function handleLogin() {
		console.log('login button clicked idk ill do this later');
	}
</script>

<div class="bg-base-100 text-base-content flex min-h-screen flex-col">
	<!-- navbar -->
	<div class="px-6 py-4 border-base-300 flex w-full items-center justify-between border-b">
		<div class="text-xl font-bold">{app.name}</div>
		<button class="btn btn-primary" onclick={handleLogin}>login</button>
	</div>

	<!-- hero -->
	<main class="flex-1">
		<section class="px-6 flex min-h-[80vh] items-center">
			<div class="max-w-6xl lg:grid-cols-2 gap-10 mx-auto grid w-full grid-cols-1 items-center">
				<!-- left text -->
				<div class="lg:text-left space-y-6 text-center">
					<h1 class="text-4xl font-bold">{app.name}</h1>
					<p class="text-lg opacity-80">placeholder text aaaa i like women they're so cute ehehe</p>

					<div class="gap-3 lg:justify-start flex justify-center">
						<button class="btn btn-primary" onclick={handleLogin}>view dashboard</button>
						<button class="btn btn-outline">learn more</button>
					</div>
				</div>

				<div class="lg:flex hidden justify-center">
					<img src="/anicord-mascot.png" alt="anicord mascot" class="max-h-125 object-contain" />
				</div>
			</div>
		</section>

		<!-- FAQ -->
		<section class="px-6 py-20 border-base-300 border-t">
			<div class="max-w-4xl space-y-10 mx-auto">
				<h2 class="text-3xl font-bold lg:text-left text-center">FAQ</h2>
				<div class="space-y-6">
					<FaqItem question="What is the Anicord Events Server?" answer="ur mom" />
					<FaqItem question="What is the Anicord Events Server?" answer="ur mom" />
					<FaqItem question="What is the Anicord Events Server?" answer="ur mom" />
				</div>
			</div>
		</section>
	</main>
	<Footer />
</div>
