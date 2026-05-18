<script lang="ts">
    let { question = "A question", answer = "An answer" } = $props();
</script>
<div class="p-4 rounded-box bg-base-200">
    <h3 class="font-semibold">{question}</h3>
    <p class="opacity-80">{answer}</p>
</div>