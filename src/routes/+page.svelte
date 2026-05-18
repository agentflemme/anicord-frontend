<script lang="ts">
  import { app } from "$lib/config";
  import Footer from "$lib/components/Footer.svelte";
  import FaqItem from "$lib/components/landing/FaqItem.svelte";

  function handleLogin() { console.log("login button clicked idk ill do this later"); }
</script>

<div class="min-h-screen flex flex-col bg-base-100 text-base-content">

  <!-- navbar -->
  <div class="w-full flex items-center justify-between px-6 py-4 border-b border-base-300">
    <div class="text-xl font-bold">{app.name}</div>
    <button class="btn btn-primary" onclick={handleLogin}>login</button>
  </div>

  <!-- hero -->
  <main class="flex-1">
    <section class="min-h-[80vh] flex items-center px-6">
      <div class="w-full max-w-6xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">

        <!-- left text -->
        <div class="text-center lg:text-left space-y-6">
          <h1 class="text-4xl font-bold">{app.name}</h1>
          <p class="text-lg opacity-80">
            placeholder text aaaa i like women they're so cute ehehe
          </p>

          <div class="flex gap-3 justify-center lg:justify-start">
            <button class="btn btn-primary" onclick={handleLogin}>view dashboard</button>
            <button class="btn btn-outline">learn more</button>
          </div>

        </div>

        <div class="hidden lg:flex justify-center">
          <img
            src="/anicord-mascot.png"
            alt="anicord mascot"
            class="max-h-125 object-contain"
          />
        </div>

      </div>
    </section>

    <!-- FAQ -->
    <section class="px-6 py-20 border-t border-base-300">
      <div class="max-w-4xl mx-auto space-y-10">
        <h2 class="text-3xl font-bold text-center lg:text-left">FAQ</h2>
        <div class="space-y-6">
        <FaqItem question="What is the Anicord Events Server?" answer = "ur mom" />
        <FaqItem question="What is the Anicord Events Server?" answer = "ur mom" />
        <FaqItem question="What is the Anicord Events Server?" answer = "ur mom" />
        </div>
      </div>
    </section>
  </main>
  <Footer />
</div>