<script setup>
import { Link } from '@inertiajs/vue3';

defineProps({
    links: Array,
});
</script>

<template>
    <div v-if="links && links.length > 3" class="flex items-center justify-center gap-1 py-4">
        <template v-for="link in links" :key="link.label">
            <Link
                v-if="link.url"
                :href="link.url"
                preserve-scroll
                class="px-3 py-1.5 text-sm rounded-lg border transition-colors"
                :class="link.active
                    ? 'bg-blue-700 text-white border-blue-700'
                    : 'bg-white text-gray-600 border-gray-300 hover:bg-gray-50'"
                v-html="link.label"
            />
            <span
                v-else
                class="px-3 py-1.5 text-sm rounded-lg border border-gray-200 text-gray-400 cursor-not-allowed bg-gray-50"
                v-html="link.label"
            />
        </template>
    </div>
</template>
