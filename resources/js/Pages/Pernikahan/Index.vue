<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import Pagination from '@/Components/Pagination.vue';
import { Head, Link, router, usePage } from '@inertiajs/vue3';
import { ref, computed } from 'vue';

const props = defineProps({
    data: Object,
    tahun: Number,
    pengaturan: Object,
});

const page = usePage();
const tahunFilter = ref(props.tahun);

function filterTahun() {
    router.get(route('pernikahan.index'), { tahun: tahunFilter.value }, { preserveState: true });
}

const exportExcelUrl = computed(() => `/export/pernikahan/excel?tahun=${tahunFilter.value}`);
const exportPdfUrl = computed(() => `/export/pernikahan/pdf?tahun=${tahunFilter.value}`);

function hapus(id) {
    if (confirm('Yakin ingin menghapus data ini?')) {
        router.delete(route('pernikahan.destroy', id));
    }
}
</script>

<template>
    <AuthenticatedLayout>
        <Head title="Data Pernikahan" />
        <template #header>
            <h1 class="text-xl font-semibold text-gray-800">Data Pernikahan</h1>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100">
            <div class="flex flex-wrap items-center justify-between gap-3 p-4 border-b border-gray-100">
                <div class="flex items-center gap-2">
                    <label class="text-sm text-gray-600">Tahun:</label>
                    <input type="number" v-model="tahunFilter" @change="filterTahun"
                        class="border border-gray-300 rounded-lg px-3 py-1.5 text-sm w-24 focus:ring-blue-500 focus:border-blue-500" />
                </div>
                <Link :href="route('pernikahan.create')" class="bg-blue-700 hover:bg-blue-800 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    + Tambah Data
                </Link>
                <a :href="exportExcelUrl" class="bg-green-600 hover:bg-green-700 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    Export Excel
                </a>
                <a :href="exportPdfUrl" class="bg-red-600 hover:bg-red-700 text-white text-sm font-medium px-4 py-2 rounded-lg transition-colors">
                    Export PDF
                </a>
            </div>

            <div v-if="page.props.flash?.success" class="mx-4 mt-4 bg-green-50 text-green-700 text-sm px-4 py-2 rounded-lg border border-green-200">
                {{ page.props.flash.success }}
            </div>

            <div class="overflow-x-auto">
                <table class="w-full text-sm">
                    <thead class="bg-gray-50 text-gray-600 uppercase text-xs">
                        <tr>
                            <th class="px-4 py-3 text-left">No. Surat</th>
                            <th class="px-4 py-3 text-left">Hari/Tanggal</th>
                            <th class="px-4 py-3 text-left">Nama Pria</th>
                            <th class="px-4 py-3 text-left">Nama Wanita</th>
                            <th class="px-4 py-3 text-left">Gereja</th>
                            <th class="px-4 py-3 text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <tr v-if="data.data.length === 0">
                            <td colspan="6" class="px-4 py-8 text-center text-gray-400">Belum ada data untuk tahun {{ tahun }}</td>
                        </tr>
                        <tr v-for="item in data.data" :key="item.id" class="hover:bg-gray-50">
                            <td class="px-4 py-3">{{ item.nomor_surat }}</td>
                            <td class="px-4 py-3">{{ item.hari }}, {{ item.tanggal }}</td>
                            <td class="px-4 py-3 font-medium">{{ item.nama_pria }}</td>
                            <td class="px-4 py-3 font-medium">{{ item.nama_wanita }}</td>
                            <td class="px-4 py-3">{{ item.gereja }}</td>
                            <td class="px-4 py-3 text-center">
                                <div class="flex items-center justify-center gap-2">
                                    <Link :href="route('pernikahan.edit', item.id)" class="text-blue-600 hover:text-blue-800 text-xs font-medium">Edit</Link>
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
