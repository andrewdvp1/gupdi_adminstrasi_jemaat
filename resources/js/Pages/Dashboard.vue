<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head } from '@inertiajs/vue3';

defineProps({
    stats: Object,
});
</script>

<template>
    <AuthenticatedLayout>
        <Head title="Dashboard" />

        <template #header>
            <h1 class="text-xl font-semibold text-gray-800">Dashboard</h1>
        </template>

        <div class="space-y-6">
            <!-- Welcome banner -->
            <div class="bg-gradient-to-r from-blue-800 to-blue-600 rounded-xl p-6 text-white flex items-center gap-6">
                <img src="/logo_gupdi2.png" alt="GUPDI" class="h-16 object-contain" />
                <div>
                    <h2 class="text-2xl font-bold">Selamat Datang</h2>
                    <p class="text-blue-100 mt-1">Sistem Administrasi Gereja GUPDI Jemaat Pasar Legi, Surakarta</p>
                </div>
            </div>

            <!-- Stats cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 flex items-center gap-4">
                    <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center">
                        <svg class="w-6 h-6 text-blue-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
                        </svg>
                    </div>
                    <div>
                        <p class="text-sm text-gray-500">Total Data Baptis</p>
                        <p class="text-3xl font-bold text-gray-800">{{ stats.baptis }}</p>
                    </div>
                </div>

                <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 flex items-center gap-4">
                    <div class="w-12 h-12 rounded-full bg-green-100 flex items-center justify-center">
                        <svg class="w-6 h-6 text-green-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                    </div>
                    <div>
                        <p class="text-sm text-gray-500">Total Penyerahan Anak</p>
                        <p class="text-3xl font-bold text-gray-800">{{ stats.penyerahan }}</p>
                    </div>
                </div>

                <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 flex items-center gap-4">
                    <div class="w-12 h-12 rounded-full bg-pink-100 flex items-center justify-center">
                        <svg class="w-6 h-6 text-pink-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                        </svg>
                    </div>
                    <div>
                        <p class="text-sm text-gray-500">Total Data Pernikahan</p>
                        <p class="text-3xl font-bold text-gray-800">{{ stats.pernikahan }}</p>
                    </div>
                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>
