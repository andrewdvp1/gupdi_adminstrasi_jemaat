<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import TextInput from '@/Components/TextInput.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';

const props = defineProps({
    baptis: Object,
    nextNomor: Number,
});

const isEdit = !!props.baptis;

const form = useForm({
    nomor_urut: props.baptis?.nomor_urut ?? props.nextNomor ?? '',
    nomor_baptis: props.baptis?.nomor_baptis ?? '',
    nama_lengkap: props.baptis?.nama_lengkap ?? '',
    nama_baptis: props.baptis?.nama_baptis ?? '',
    tempat_lahir: props.baptis?.tempat_lahir ?? '',
    tanggal_lahir: props.baptis?.tanggal_lahir ?? '',
    nama_ayah: props.baptis?.nama_ayah ?? '',
    nama_ibu: props.baptis?.nama_ibu ?? '',
    alamat: props.baptis?.alamat ?? '',
});

const submit = () => {
    if (isEdit) {
        form.put(route('baptis.update', props.baptis.id));
    } else {
        form.post(route('baptis.store'));
    }
};
</script>

<template>
    <AuthenticatedLayout>
        <Head :title="isEdit ? 'Edit Data Baptis' : 'Tambah Data Baptis'" />
        <template #header>
            <div class="flex items-center gap-2">
                <Link :href="route('baptis.index')" class="text-gray-400 hover:text-gray-600">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                    </svg>
                </Link>
                <h1 class="text-xl font-semibold text-gray-800">{{ isEdit ? 'Edit' : 'Tambah' }} Data Baptis</h1>
            </div>
        </template>

        <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 max-w-3xl">
            <form @submit.prevent="submit" class="space-y-5">
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <InputLabel value="Nomor Urut" />
                        <TextInput type="number" v-model="form.nomor_urut" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nomor_urut" class="mt-1" />
                    </div>
                    <div>
                        <InputLabel value="Nomor Baptis" />
                        <TextInput v-model="form.nomor_baptis" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nomor_baptis" class="mt-1" />
                    </div>
                </div>

                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <InputLabel value="Nama Lengkap" />
                        <TextInput v-model="form.nama_lengkap" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nama_lengkap" class="mt-1" />
                    </div>
                    <div>
                        <InputLabel value="Nama Baptis" />
                        <TextInput v-model="form.nama_baptis" class="mt-1 w-full" required />
                        <InputError :message="form.errors.nama_baptis" class="mt-1" />
                    </div>
                </div>

                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <InputLabel value="Tempat Lahir" />
                        <TextInput v-model="form.tempat_lahir" class="mt-1 w-full" required />
                        <InputError :message="form.errors.tempat_lahir" class="mt-1" />
                    </div>
                    <div>
                        <InputLabel value="Tanggal Lahir" />
                        <TextInput type="date" v-model="form.tanggal_lahir" class="mt-1 w-full" required />
                        <InputError :message="form.errors.tanggal_lahir" class="mt-1" />
                    </div>
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
                    <Link :href="route('baptis.index')" class="text-sm text-gray-500 hover:text-gray-700">Batal</Link>
                </div>
            </form>
        </div>
    </AuthenticatedLayout>
</template>
