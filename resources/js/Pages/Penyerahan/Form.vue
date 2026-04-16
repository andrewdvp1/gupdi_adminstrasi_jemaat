<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import TextInput from '@/Components/TextInput.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';

const props = defineProps({ penyerahan: Object });
const isEdit = !!props.penyerahan;

const form = useForm({
    nomor_penyerahan: props.penyerahan?.nomor_penyerahan ?? '',
    nama_anak: props.penyerahan?.nama_anak ?? '',
    tempat_lahir: props.penyerahan?.tempat_lahir ?? '',
    tanggal_lahir: props.penyerahan?.tanggal_lahir ?? '',
    nama_ayah: props.penyerahan?.nama_ayah ?? '',
    nama_ibu: props.penyerahan?.nama_ibu ?? '',
    alamat: props.penyerahan?.alamat ?? '',
});

const submit = () => {
    if (isEdit) {
        form.put(route('penyerahan.update', props.penyerahan.id));
    } else {
        form.post(route('penyerahan.store'));
    }
};
</script>

<template>
    <AuthenticatedLayout>
        <Head :title="isEdit ? 'Edit Penyerahan Anak' : 'Tambah Penyerahan Anak'" />
        <template #header>
            <div class="flex items-center gap-2">
                <Link :href="route('penyerahan.index')" class="text-gray-400 hover:text-gray-600">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                    </svg>
                </Link>
                <h1 class="text-xl font-semibold text-gray-800">{{ isEdit ? 'Edit' : 'Tambah' }} Penyerahan Anak</h1>
            </div>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 max-w-2xl">
            <form @submit.prevent="submit" class="space-y-5">
                <div>
                    <InputLabel value="Nomor Penyerahan" />
                    <TextInput v-model="form.nomor_penyerahan" class="mt-1 w-full" required />
                    <InputError :message="form.errors.nomor_penyerahan" class="mt-1" />
                </div>

                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <InputLabel value="Nama Anak" />
                        <TextInput v-model="form.nama_anak" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nama_anak" class="mt-1" />
                    </div>
                    <div>
                        <InputLabel value="Tempat Lahir" />
                        <TextInput v-model="form.tempat_lahir" class="mt-1 w-full" required />
                        <InputError :message="form.errors.tempat_lahir" class="mt-1" />
                    </div>
                </div>

                <div>
                    <InputLabel value="Tanggal Lahir" />
                    <TextInput type="date" v-model="form.tanggal_lahir" class="mt-1 w-full" required />
                    <InputError :message="form.errors.tanggal_lahir" class="mt-1" />
                </div>

                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <InputLabel value="Nama Ayah" />
                        <TextInput v-model="form.nama_ayah" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nama_ayah" class="mt-1" />
                    </div>
                    <div>
                        <InputLabel value="Nama Ibu" />
                        <TextInput v-model="form.nama_ibu" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nama_ibu" class="mt-1" />
                    </div>
                </div>

                <div>
                    <InputLabel value="Alamat" />
                    <textarea v-model="form.alamat" rows="3" required
                        class="mt-1 w-full border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500 text-sm"
                    ></textarea>
                    <InputError :message="form.errors.alamat" class="mt-1" />
                </div>

                <div class="flex items-center gap-3 pt-2">
                    <PrimaryButton :disabled="form.processing" class="bg-blue-700 hover:bg-blue-800">
                        {{ isEdit ? 'Perbarui' : 'Simpan' }}
                    </PrimaryButton>
                    <Link :href="route('penyerahan.index')" class="text-sm text-gray-500 hover:text-gray-700">Batal</Link>
                </div>
            </form>
        </div>
    </AuthenticatedLayout>
</template>
