<script setup>
import Checkbox from '@/Components/Checkbox.vue';
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, useForm } from '@inertiajs/vue3';

defineProps({
    status: { type: String },
});

const form = useForm({
    username: '',
    password: '',
    remember: false,
});

const submit = () => {
    form.post(route('login'), {
        onFinish: () => form.reset('password'),
    });
};
</script>

<template>
    <GuestLayout>
        <Head title="Login - Administrasi GUPDI" />

        <div class="bg-white rounded-2xl shadow-2xl overflow-hidden">
            <!-- Header dengan logo -->
            <div class="bg-gradient-to-b from-blue-900 to-blue-800 px-8 py-8 flex flex-col items-center">
                <img src="/logo_gupdi2.png" alt="Logo GUPDI" class="h-20 object-contain mb-3" />
                <p class="text-blue-200 text-sm font-medium tracking-wide">Sistem Administrasi Gereja</p>
            </div>

            <!-- Form login -->
            <div class="px-8 py-8">
                <div v-if="status" class="mb-4 text-sm font-medium text-green-600 bg-green-50 rounded-lg px-4 py-2">
                    {{ status }}
                </div>

                <form @submit.prevent="submit" class="space-y-5">
                    <div>
                        <InputLabel for="username" value="Username" class="text-gray-700 font-semibold" />
                        <TextInput
                            id="username"
                            type="text"
                            class="mt-1 block w-full rounded-lg border-gray-300 focus:border-blue-500 focus:ring-blue-500"
                            v-model="form.username"
                            required
                            autofocus
                            autocomplete="username"
                            placeholder="Masukkan username"
                        />
                        <InputError class="mt-1" :message="form.errors.username" />
                    </div>

                    <div>
                        <InputLabel for="password" value="Password" class="text-gray-700 font-semibold" />
                        <TextInput
                            id="password"
                            type="password"
                            class="mt-1 block w-full rounded-lg border-gray-300 focus:border-blue-500 focus:ring-blue-500"
                            v-model="form.password"
                            required
                            autocomplete="current-password"
                            placeholder="Masukkan password"
                        />
                        <InputError class="mt-1" :message="form.errors.password" />
                    </div>

                    <div class="flex items-center justify-between">
                        <label class="flex items-center gap-2 cursor-pointer">
                            <Checkbox name="remember" v-model:checked="form.remember" />
                            <span class="text-sm text-gray-600">Ingat saya</span>
                        </label>
                    </div>

                    <PrimaryButton
                        class="w-full justify-center bg-blue-700 hover:bg-blue-800 focus:ring-blue-500 py-3 text-base font-semibold tracking-wide"
                        :class="{ 'opacity-50': form.processing }"
                        :disabled="form.processing"
                    >
                        <span v-if="form.processing">Memproses...</span>
                        <span v-else>Masuk</span>
                    </PrimaryButton>
                </form>
            </div>

            <div class="bg-gray-50 px-8 py-3 text-center border-t border-gray-100">
                <p class="text-xs text-gray-400">&copy; {{ new Date().getFullYear() }} GUPDI Jemaat Pasar Legi, Surakarta</p>
            </div>
        </div>
    </GuestLayout>
</template>
