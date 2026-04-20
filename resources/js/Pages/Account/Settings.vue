<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue';

const props = defineProps({
    username: {
        type: String,
        required: true,
    },
});

const page = usePage();
const flashSuccess = computed(() => page.props.flash?.success);

// Form 1: Ganti Username
const usernameForm = useForm({
    username: props.username,
});

const submitUsername = () => {
    usernameForm.patch(route('account.username'), {
        preserveScroll: true,
        onSuccess: () => {},
    });
};

// Form 2: Ganti Password
const passwordForm = useForm({
    current_password: '',
    password: '',
    password_confirmation: '',
});

const submitPassword = () => {
    passwordForm.put(route('account.password'), {
        preserveScroll: true,
        onSuccess: () => passwordForm.reset(),
        onError: () => {
            if (passwordForm.errors.password) {
                passwordForm.reset('password', 'password_confirmation');
            }
            if (passwordForm.errors.current_password) {
                passwordForm.reset('current_password');
            }
        },
    });
};
</script>

<template>
    <Head title="Pengaturan Akun" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="text-xl font-semibold leading-tight text-gray-800">
                Pengaturan Akun
            </h2>
        </template>

        <!-- Flash notification -->
        <Transition
            enter-active-class="transition ease-in-out duration-300"
            enter-from-class="opacity-0 -translate-y-2"
            leave-active-class="transition ease-in-out duration-300"
            leave-to-class="opacity-0 -translate-y-2"
        >
            <div
                v-if="flashSuccess"
                class="mb-4 rounded-lg bg-green-50 border border-green-200 px-4 py-3 text-sm text-green-700"
            >
                {{ flashSuccess }}
            </div>
        </Transition>

        <div class="space-y-6">
            <!-- Section 1: Ganti Username -->
            <div class="bg-white p-6 shadow sm:rounded-lg">
                <section class="max-w-xl">
                    <header>
                        <h2 class="text-lg font-medium text-gray-900">Ganti Username</h2>
                        <p class="mt-1 text-sm text-gray-600">
                            Perbarui username yang digunakan untuk login ke aplikasi.
                        </p>
                    </header>

                    <form @submit.prevent="submitUsername" class="mt-6 space-y-6">
                        <div>
                            <InputLabel for="username" value="Username" />
                            <TextInput
                                id="username"
                                v-model="usernameForm.username"
                                type="text"
                                class="mt-1 block w-full"
                                autocomplete="username"
                                required
                            />
                            <InputError :message="usernameForm.errors.username" class="mt-2" />
                        </div>

                        <div class="flex items-center gap-4">
                            <PrimaryButton :disabled="usernameForm.processing">Simpan</PrimaryButton>
                        </div>
                    </form>
                </section>
            </div>

            <!-- Section 2: Ganti Password -->
            <div class="bg-white p-6 shadow sm:rounded-lg">
                <section class="max-w-xl">
                    <header>
                        <h2 class="text-lg font-medium text-gray-900">Ganti Password</h2>
                        <p class="mt-1 text-sm text-gray-600">
                            Pastikan akun Anda menggunakan password yang kuat untuk keamanan.
                        </p>
                    </header>

                    <form @submit.prevent="submitPassword" class="mt-6 space-y-6">
                        <div>
                            <InputLabel for="current_password" value="Password Saat Ini" />
                            <TextInput
                                id="current_password"
                                v-model="passwordForm.current_password"
                                type="password"
                                class="mt-1 block w-full"
                                autocomplete="current-password"
                            />
                            <InputError :message="passwordForm.errors.current_password" class="mt-2" />
                        </div>

                        <div>
                            <InputLabel for="password" value="Password Baru" />
                            <TextInput
                                id="password"
                                v-model="passwordForm.password"
                                type="password"
                                class="mt-1 block w-full"
                                autocomplete="new-password"
                            />
                            <InputError :message="passwordForm.errors.password" class="mt-2" />
                        </div>

                        <div>
                            <InputLabel for="password_confirmation" value="Konfirmasi Password Baru" />
                            <TextInput
                                id="password_confirmation"
                                v-model="passwordForm.password_confirmation"
                                type="password"
                                class="mt-1 block w-full"
                                autocomplete="new-password"
                            />
                            <InputError :message="passwordForm.errors.password_confirmation" class="mt-2" />
                        </div>

                        <div class="flex items-center gap-4">
                            <PrimaryButton :disabled="passwordForm.processing">Simpan</PrimaryButton>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </AuthenticatedLayout>
</template>
