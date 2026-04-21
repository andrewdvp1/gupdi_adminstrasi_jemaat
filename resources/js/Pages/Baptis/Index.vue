<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import Pagination from '@/Components/Pagination.vue';
import { Head, Link, router, usePage } from '@inertiajs/vue3';
import { ref, computed } from 'vue';

const props = defineProps({
    data: Object,
    tahun: Number,
    pengaturan: Object,
    filters: Object,
});

const page = usePage();
const tahunFilter = ref(props.tahun);
const searchKeyword = ref(props.filters?.search ?? '');
let debounceTimer = null;

function onSearch() {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(() => {
        router.get(route('baptis.index'), {
            tahun: tahunFilter.value,
            search: searchKeyword.value,
        }, { preserveState: true, replace: true });
    }, 300);
}

function filterTahun() {
    router.get(route('baptis.index'), { tahun: tahunFilter.value, search: searchKeyword.value }, { preserveState: true });
}

const exportExcelUrl = computed(() => `/export/baptis/excel?tahun=${tahunFilter.value}`);
const exportPdfUrl = computed(() => `/export/baptis/pdf?tahun=${tahunFilter.value}`);

function hapus(id) {
    if (confirm('Yakin ingin menghapus data ini?')) {
        router.delete(route('baptis.destroy', id));
    }
}
</script>

<template>
    <AuthenticatedLayout>
        <Head title="Data Baptis" />
        <template #header>
            <h1 class="text-xl font-semibold text-gray-800">Data Baptis</h1>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100">
            <!-- Toolbar -->
            <div class="flex flex-wrap items-center justify-between gap-3 p-4 border-b border-gray-100">
                <div class="flex items-center gap-2">
                    <label class="text-sm text-gray-600">Tahun:</label>
                    <input
                        type="number"
                        v-model="tahunFilter"
                        @change="filterTahun"
                        class="border border-gray-300 rounded-lg px-3 py-1.5 text-sm w-24 focus:ring-blue-500 focus:border-blue-500"
                    />
                    <input
                        type="text"
                        v-model="searchKeyword"
                        @input="onSearch"
                        placeholder="Cari nama, nomor baptis..."
                        class="border border-gray-300 rounded-lg px-3 py-1.5 text-sm w-56 focus:ring-blue-500 focus:border-blue-500"
                    />
                </div>
                <Link :href="route('baptis.create')" class="bg-blue-700 hover:bg-blue-800 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    + Tambah Data
                </Link>
                <a :href="exportExcelUrl" class="bg-green-600 hover:bg-green-700 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    Export Excel
                </a>
                <a :href="exportPdfUrl" class="bg-red-600 hover:bg-red-700 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    Export PDF
                </a>
            </div>

            <!-- Flash message -->
            <div v-if="page.props.flash?.success" class="mx-4 mt-4 bg-green-50 text-green-700 text-sm px-4 py-2 rounded-lg border border-green-200">
                {{ page.props.flash.success }}
            </div>

            <!-- Table -->
            <div class="overflow-x-auto">
                <table class="w-full text-sm">
                    <thead class="bg-gray-50 text-gray-600 uppercase text-xs">
                        <tr>
                            <th class="px-4 py-3 text-left">No. Urut</th>
                            <th class="px-4 py-3 text-left">No. Baptis</th>
                            <th class="px-4 py-3 text-left">Nama Lengkap</th>
                            <th class="px-4 py-3 text-left">Nama Baptis</th>
                            <th class="px-4 py-3 text-left">Tempat Lahir</th>
                            <th class="px-4 py-3 text-left">Tanggal Lahir</th>
                            <th class="px-4 py-3 text-left">Nama Ayah</th>
                            <th class="px-4 py-3 text-left">Nama Ibu</th>
                            <th class="px-4 py-3 text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <tr v-if="data.data.length === 0">
                            <td colspan="9" class="px-4 py-8 text-center text-gray-400">
                                <span v-if="filters?.search">Tidak ada data yang cocok dengan pencarian.</span>
                                <span v-else>Belum ada data untuk tahun {{ tahun }}</span>
                            </td>
                        </tr>
                        <tr v-for="item in data.data" :key="item.id" class="hover:bg-gray-50">
                            <td class="px-4 py-3">{{ item.nomor_urut }}</td>
                            <td class="px-4 py-3">{{ item.nomor_baptis }}</td>
                            <td class="px-4 py-3 font-medium">{{ item.nama_lengkap }}</td>
                            <td class="px-4 py-3">{{ item.nama_baptis }}</td>
                            <td class="px-4 py-3">{{ item.tempat_lahir }}</td>
                            <td class="px-4 py-3">{{ item.tanggal_lahir }}</td>
                            <td class="px-4 py-3">{{ item.nama_ayah }}</td>
                            <td class="px-4 py-3">{{ item.nama_ibu }}</td>
                            <td class="px-4 py-3 text-center">
                                <div class="flex items-center justify-center gap-2">
                                    <Link :href="route('baptis.edit', item.id)" class="text-blue-600 hover:text-blue-800 text-xs font-medium">Edit</Link>
                                    <button @click="hapus(item.id)" class="text-red-500 hover:text-red-700 text-xs font-medium">Hapus</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <Pagination :links="data.links" />
        </div>
    </AuthenticatedLayout>
</template>
