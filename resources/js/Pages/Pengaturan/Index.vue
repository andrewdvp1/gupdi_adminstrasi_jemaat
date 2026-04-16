<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import TextInput from '@/Components/TextInput.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import { Head, useForm, usePage } from '@inertiajs/vue3';

const props = defineProps({ pengaturan: Object });
const page = usePage();

const form = useForm({
    tahun_pernikahan: props.pengaturan?.tahun_pernikahan ?? new Date().getFullYear(),
    tahun_baptis: props.pengaturan?.tahun_baptis ?? new Date().getFullYear(),
    tahun_penyerahan: props.pengaturan?.tahun_penyerahan ?? new Date().getFullYear(),
});

const submit = () => {
    form.put(route('pengaturan.update'));
};
</script>

<template>
    <AuthenticatedLayout>
        <Head title="Pengaturan" />
        <template #header>
            <h1 class="text-xl font-semibold text-gray-800">Pengaturan</h1>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 max-w-md">
            <div v-if="page.props.flash?.success" class="mb-4 bg-green-50 text-green-700 text-sm px-4 py-2 rounded-lg border border-green-200">
                {{ page.props.flash.success }}
            </div>

            <p class="text-sm text-gray-500 mb-5">Atur tahun aktif untuk setiap jenis data administrasi.</p>

            <form @submit.prevent="submit" class="space-y-5">
                <div>
                    <InputLabel value="Tahun Aktif Data Baptis" />
                    <TextInput type="number" v-model="form.tahun_baptis" class="mt-1 w-full" required />
                    <InputError :message="form.errors.tahun_baptis" class="mt-1" />
                </div>
                <div>
                    <InputLabel value="Tahun Aktif Penyerahan Anak" />
                    <TextInput type="number" v-model="form.tahun_penyerahan" class="mt-1 w-full" required />
                    <InputError :message="form.errors.tahun_penyerahan" class="mt-1" />
                </div>
                <div>
                    <InputLabel value="Tahun Aktif Data Pernikahan" />
                    <TextInput type="number" v-model="form.tahun_pernikahan" class="mt-1 w-full" required />
                    <InputError :message="form.errors.tahun_pernikahan" class="mt-1" />
                </div>

                <PrimaryButton :disabled="form.processing" class="bg-blue-700 hover:bg-blue-800">
                    Simpan Pengaturan
                </PrimaryButton>
            </form>
        </div>
    </AuthenticatedLayout>
</template>
