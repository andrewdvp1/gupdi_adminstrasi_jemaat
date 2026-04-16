<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import TextInput from '@/Components/TextInput.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';

const props = defineProps({ pernikahan: Object });
const isEdit = !!props.pernikahan;

const form = useForm({
    nomor_surat: props.pernikahan?.nomor_surat ?? '',
    hari: props.pernikahan?.hari ?? '',
    tanggal: props.pernikahan?.tanggal ?? '',
    jam: props.pernikahan?.jam ?? '',
    gereja: props.pernikahan?.gereja ?? '',
    alamat_gereja: props.pernikahan?.alamat_gereja ?? '',
    nama_pria: props.pernikahan?.nama_pria ?? '',
    tempat_lahir_pria: props.pernikahan?.tempat_lahir_pria ?? '',
    tanggal_lahir_pria: props.pernikahan?.tanggal_lahir_pria ?? '',
    ayah_pria: props.pernikahan?.ayah_pria ?? '',
    ibu_pria: props.pernikahan?.ibu_pria ?? '',
    alamat_pria: props.pernikahan?.alamat_pria ?? '',
    nama_wanita: props.pernikahan?.nama_wanita ?? '',
    tempat_lahir_wanita: props.pernikahan?.tempat_lahir_wanita ?? '',
    tanggal_lahir_wanita: props.pernikahan?.tanggal_lahir_wanita ?? '',
    ayah_wanita: props.pernikahan?.ayah_wanita ?? '',
    ibu_wanita: props.pernikahan?.ibu_wanita ?? '',
    alamat_wanita: props.pernikahan?.alamat_wanita ?? '',
});

const submit = () => {
    if (isEdit) {
        form.put(route('pernikahan.update', props.pernikahan.id));
    } else {
        form.post(route('pernikahan.store'));
    }
};
</script>

<template>
    <AuthenticatedLayout>
        <Head :title="isEdit ? 'Edit Data Pernikahan' : 'Tambah Data Pernikahan'" />
        <template #header>
            <div class="flex items-center gap-2">
                <Link :href="route('pernikahan.index')" class="text-gray-400 hover:text-gray-600">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                    </svg>
                </Link>
                <h1 class="text-xl font-semibold text-gray-800">{{ isEdit ? 'Edit' : 'Tambah' }} Data Pernikahan</h1>
            </div>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 max-w-4xl">
            <form @submit.prevent="submit" class="space-y-6">
                <!-- Info Acara -->
                <div>
                    <h3 class="text-sm font-semibold text-gray-700 uppercase tracking-wide mb-3 pb-2 border-b">Informasi Acara</h3>
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <InputLabel value="Nomor Surat" />
                            <TextInput v-model="form.nomor_surat" class="mt-1 w-full" required />
                            <InputError :message="form.errors.nomor_surat" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Hari" />
                            <TextInput v-model="form.hari" placeholder="Sabtu" class="mt-1 w-full" required />
                            <InputError :message="form.errors.hari" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Tanggal" />
                            <TextInput type="date" v-model="form.tanggal" class="mt-1 w-full" required />
                            <InputError :message="form.errors.tanggal" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Jam" />
                            <TextInput type="time" v-model="form.jam" class="mt-1 w-full" required />
                            <InputError :message="form.errors.jam" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Gereja" />
                            <TextInput v-model="form.gereja" class="mt-1 w-full" required />
                            <InputError :message="form.errors.gereja" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Alamat Gereja" />
                            <TextInput v-model="form.alamat_gereja" class="mt-1 w-full" required />
                            <InputError :message="form.errors.alamat_gereja" class="mt-1" />
                        </div>
                    </div>
                </div>

                <!-- Data Pria -->
                <div>
                    <h3 class="text-sm font-semibold text-blue-700 uppercase tracking-wide mb-3 pb-2 border-b border-blue-100">Data Mempelai Pria</h3>
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <InputLabel value="Nama Pria" />
                            <TextInput v-model="form.nama_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.nama_pria" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Tempat Lahir" />
                            <TextInput v-model="form.tempat_lahir_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.tempat_lahir_pria" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Tanggal Lahir" />
                            <TextInput type="date" v-model="form.tanggal_lahir_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.tanggal_lahir_pria" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Nama Ayah" />
                            <TextInput v-model="form.ayah_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.ayah_pria" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Nama Ibu" />
                            <TextInput v-model="form.ibu_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.ibu_pria" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Alamat" />
                            <TextInput v-model="form.alamat_pria" class="mt-1 w-full" required />
                            <InputError :message="form.errors.alamat_pria" class="mt-1" />
                        </div>
                    </div>
                </div>

                <!-- Data Wanita -->
                <div>
                    <h3 class="text-sm font-semibold text-pink-600 uppercase tracking-wide mb-3 pb-2 border-b border-pink-100">Data Mempelai Wanita</h3>
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <InputLabel value="Nama Wanita" />
                            <TextInput v-model="form.nama_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.nama_wanita" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Tempat Lahir" />
                            <TextInput v-model="form.tempat_lahir_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.tempat_lahir_wanita" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Tanggal Lahir" />
                            <TextInput type="date" v-model="form.tanggal_lahir_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.tanggal_lahir_wanita" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Nama Ayah" />
                            <TextInput v-model="form.ayah_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.ayah_wanita" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Nama Ibu" />
                            <TextInput v-model="form.ibu_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.ibu_wanita" class="mt-1" />
                        </div>
                        <div>
                            <InputLabel value="Alamat" />
                            <TextInput v-model="form.alamat_wanita" class="mt-1 w-full" required />
                            <InputError :message="form.errors.alamat_wanita" class="mt-1" />
                        </div>
                    </div>
                </div>

                <div class="flex items-center gap-3 pt-2">
                    <PrimaryButton :disabled="form.processing" class="bg-blue-700 hover:bg-blue-800">
                        {{ isEdit ? 'Perbarui' : 'Simpan' }}
                    </PrimaryButton>
                    <Link :href="route('pernikahan.index')" class="text-sm text-gray-500 hover:text-gray-700">Batal</Link>
                </div>
            </form>
        </div>
    </AuthenticatedLayout>
</template>
