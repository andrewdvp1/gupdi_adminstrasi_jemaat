<script setup>
import { ref, computed } from 'vue';
import { Link, usePage } from '@inertiajs/vue3';
import Dropdown from '@/Components/Dropdown.vue';
import DropdownLink from '@/Components/DropdownLink.vue';

const page = usePage();
const user = computed(() => page.props.auth.user);
const sidebarOpen = ref(true);

const navItems = [
    { label: 'Dashboard', route: 'dashboard', icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6' },
    { label: 'Data Baptis', route: 'baptis.index', icon: 'M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253' },
    { label: 'Penyerahan Anak', route: 'penyerahan.index', icon: 'M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z' },
    { label: 'Data Pernikahan', route: 'pernikahan.index', icon: 'M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z' },
    { label: 'Pengaturan', route: 'pengaturan.index', icon: 'M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z M15 12a3 3 0 11-6 0 3 3 0 016 0z' },
];
</script>

<template>
    <div class="flex min-h-screen bg-gray-100">
        <!-- Sidebar -->
        <aside
            :class="sidebarOpen ? 'w-64' : 'w-16'"
            class="bg-gradient-to-b from-blue-900 to-blue-800 text-white flex flex-col transition-all duration-300 ease-in-out shrink-0"
        >
            <!-- Logo area -->
            <div class="flex items-center gap-3 px-4 py-5 border-b border-blue-700">
                <img src="/gupdi_logo.png" alt="GUPDI" class="h-10 w-10 object-contain shrink-0" />
                <div v-if="sidebarOpen" class="overflow-hidden">
                    <p class="font-bold text-sm leading-tight text-yellow-400">GUPDI</p>
                    <p class="text-xs text-blue-200 leading-tight">Pasar Legi, Surakarta</p>
                </div>
            </div>

            <!-- Nav items -->
            <nav class="flex-1 py-4 space-y-1 px-2">
                <Link
                    v-for="item in navItems"
                    :key="item.route"
                    :href="route(item.route)"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium transition-colors duration-150"
                    :class="route().current(item.route)
                        ? 'bg-blue-600 text-white'
                        : 'text-blue-100 hover:bg-blue-700 hover:text-white'"
                >
                    <svg class="w-5 h-5 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="item.icon" />
                    </svg>
                    <span v-if="sidebarOpen" class="truncate">{{ item.label }}</span>
                </Link>
            </nav>

            <!-- Toggle button -->
            <button
                @click="sidebarOpen = !sidebarOpen"
                class="flex items-center justify-center py-3 border-t border-blue-700 text-blue-300 hover:text-white hover:bg-blue-700 transition-colors"
            >
                <svg class="w-5 h-5 transition-transform" :class="sidebarOpen ? '' : 'rotate-180'" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 19l-7-7 7-7m8 14l-7-7 7-7" />
                </svg>
            </button>
        </aside>

        <!-- Main content -->
        <div class="flex-1 flex flex-col min-w-0">
            <!-- Top navbar -->
            <header class="bg-white shadow-sm border-b border-gray-200 h-16 flex items-center justify-between px-6 shrink-0">
                <div v-if="$slots.header">
                    <slot name="header" />
                </div>
                <div v-else></div>

                <Dropdown align="right" width="48">
                    <template #trigger>
                        <button class="flex items-center gap-2 text-sm text-gray-700 hover:text-gray-900 focus:outline-none">
                            <div class="w-8 h-8 rounded-full bg-blue-700 flex items-center justify-center text-white font-bold text-xs">
                                {{ user.name.charAt(0).toUpperCase() }}
                            </div>
                            <span class="font-medium">{{ user.name }}</span>
                            <svg class="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>
                    </template>
                    <template #content>
                        <DropdownLink :href="route('account.settings')">
                            Pengaturan Akun
                        </DropdownLink>
                        <DropdownLink :href="route('logout')" method="post" as="button">
                            Keluar
                        </DropdownLink>
                    </template>
                </Dropdown>
            </header>

            <!-- Page content -->
            <main class="flex-1 p-6 overflow-auto">
                <slot />
            </main>
        </div>
    </div>
</template>
