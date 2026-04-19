# Sistem Administrasi Gereja GUPDI

Aplikasi web untuk mengelola data administrasi **Gereja GUPDI Jemaat Pasar Legi, Surakarta**. Dibangun menggunakan Laravel 13, Vue 3, Inertia.js, dan Tailwind CSS.

---

## Fitur Utama

- **Autentikasi** — Login menggunakan username dan password dengan rate limiting bawaan Laravel
- **Dashboard** — Ringkasan statistik jumlah data baptis, penyerahan anak, dan pernikahan
- **Data Baptis** — Pencatatan data jemaat yang dibaptis, lengkap dengan nomor urut dan nomor baptis
- **Penyerahan Anak** — Pencatatan data penyerahan anak kepada Tuhan
- **Data Pernikahan** — Pencatatan data pernikahan jemaat beserta data mempelai pria dan wanita
- **Pengaturan** — Konfigurasi tahun aktif untuk setiap kategori data
- **Filter per Tahun** — Setiap halaman data dapat difilter berdasarkan tahun
- **Sidebar Navigasi** — Sidebar yang dapat di-collapse untuk tampilan yang lebih luas

---

## Teknologi yang Digunakan

| Teknologi | Versi | Keterangan |
|---|---|---|
| PHP | ^8.3 | Backend language |
| Laravel | ^13.0 | PHP framework |
| Inertia.js | ^2.0 | Jembatan antara Laravel dan Vue |
| Vue.js | ^3.4 | Frontend framework |
| Tailwind CSS | ^3.2 | Utility-first CSS framework |
| Vite | ^8.0 | Build tool frontend |
| SQLite | — | Database default (bisa diganti) |
| Laravel Breeze | ^2.4 | Starter kit autentikasi |
| Ziggy | ^2.0 | Helper route Laravel di sisi Vue |

---

## Struktur Database

### Tabel `users` (Admin)
| Kolom | Tipe | Keterangan |
|---|---|---|
| id | int | Primary key |
| username | varchar(100) | Username unik untuk login |
| name | varchar(255) | Nama lengkap admin |
| email | varchar(255) | Email admin |
| password | varchar(255) | Password (hashed) |
| role | varchar(50) | Role pengguna (default: `user`) |

### Tabel `data_baptis`
| Kolom | Tipe | Keterangan |
|---|---|---|
| id | int | Primary key |
| nomor_urut | int unsigned | Nomor urut baptis |
| nomor_baptis | varchar(50) | Nomor surat baptis |
| nama_lengkap | varchar(100) | Nama lengkap jemaat |
| nama_baptis | varchar(100) | Nama baptis yang diterima |
| tempat_lahir | varchar(100) | Tempat lahir |
| tanggal_lahir | date | Tanggal lahir |
| nama_ayah | varchar(100) | Nama ayah |
| nama_ibu | varchar(100) | Nama ibu |
| alamat | text | Alamat lengkap |
| created_at | timestamp | Tanggal pencatatan |

### Tabel `data_penyerahan_anak`
| Kolom | Tipe | Keterangan |
|---|---|---|
| id | int | Primary key |
| nomor_penyerahan | varchar(50) | Nomor surat penyerahan |
| nama_anak | varchar(100) | Nama anak |
| tempat_lahir | varchar(50) | Tempat lahir anak |
| tanggal_lahir | date | Tanggal lahir anak |
| nama_ayah | varchar(100) | Nama ayah |
| nama_ibu | varchar(100) | Nama ibu |
| alamat | text | Alamat keluarga |
| created_at | timestamp | Tanggal pencatatan |
| updated_at | timestamp | Tanggal pembaruan |

### Tabel `data_pernikahan`
| Kolom | Tipe | Keterangan |
|---|---|---|
| id | int | Primary key |
| nomor_surat | varchar(50) | Nomor surat pernikahan |
| hari | varchar(20) | Hari pelaksanaan |
| tanggal | date | Tanggal pernikahan |
| jam | time | Jam pelaksanaan |
| gereja | varchar(150) | Nama gereja |
| alamat_gereja | text | Alamat gereja |
| nama_pria | varchar(100) | Nama mempelai pria |
| tempat_lahir_pria | varchar(100) | Tempat lahir pria |
| tanggal_lahir_pria | date | Tanggal lahir pria |
| ayah_pria | varchar(100) | Nama ayah pria |
| ibu_pria | varchar(100) | Nama ibu pria |
| alamat_pria | text | Alamat pria |
| nama_wanita | varchar(100) | Nama mempelai wanita |
| tempat_lahir_wanita | varchar(100) | Tempat lahir wanita |
| tanggal_lahir_wanita | date | Tanggal lahir wanita |
| ayah_wanita | varchar(100) | Nama ayah wanita |
| ibu_wanita | varchar(100) | Nama ibu wanita |
| alamat_wanita | text | Alamat wanita |
| ttd_pria | varchar(255) | Path tanda tangan pria (opsional) |
| ttd_wanita | varchar(255) | Path tanda tangan wanita (opsional) |
| created_at | timestamp | Tanggal pencatatan |

### Tabel `pengaturan`
| Kolom | Tipe | Keterangan |
|---|---|---|
| id | int | Primary key |
| tahun_pernikahan | int | Tahun aktif data pernikahan |
| tahun_baptis | int | Tahun aktif data baptis |
| tahun_penyerahan | int | Tahun aktif penyerahan anak |

---

## Struktur Direktori

```
administrasi-gupdi/
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   │   ├── Auth/                        # Controller autentikasi (Breeze)
│   │   │   ├── DashboardController.php      # Statistik dashboard
│   │   │   ├── DataBaptisController.php     # CRUD data baptis
│   │   │   ├── DataPenyerahanAnakController.php
│   │   │   ├── DataPernikahanController.php
│   │   │   └── PengaturanController.php
│   │   ├── Middleware/
│   │   │   └── HandleInertiaRequests.php    # Share props global (auth, flash)
│   │   └── Requests/
│   │       └── Auth/LoginRequest.php        # Validasi login via username
│   └── Models/
│       ├── User.php
│       ├── DataBaptis.php
│       ├── DataPenyerahanAnak.php
│       ├── DataPernikahan.php
│       └── Pengaturan.php
├── database/
│   ├── migrations/                          # Semua skema tabel
│   └── seeders/
│       └── DatabaseSeeder.php               # Seed akun admin default
├── resources/
│   └── js/
│       ├── Layouts/
│       │   ├── AuthenticatedLayout.vue      # Layout dengan sidebar navigasi
│       │   └── GuestLayout.vue              # Layout halaman login
│       └── Pages/
│           ├── Auth/Login.vue               # Halaman login GUPDI
│           ├── Dashboard.vue                # Halaman dashboard
│           ├── Baptis/
│           │   ├── Index.vue                # Daftar data baptis
│           │   └── Form.vue                 # Form tambah/edit baptis
│           ├── Penyerahan/
│           │   ├── Index.vue
│           │   └── Form.vue
│           ├── Pernikahan/
│           │   ├── Index.vue
│           │   └── Form.vue
│           └── Pengaturan/
│               └── Index.vue
├── routes/
│   ├── web.php                              # Route utama aplikasi
│   └── auth.php                             # Route autentikasi (Breeze)
└── public/
    ├── logo_gupdi1.png                      # Logo GUPDI (hitam)
    └── logo_gupdi2.png                      # Logo GUPDI (emas, digunakan di UI)
```

---

## Instalasi & Menjalankan Aplikasi

### Prasyarat

Pastikan sudah terinstall:
- PHP >= 8.3
    https://downloads.php.net/~windows/releases/archives/php-8.5.0-Win32-vs17-x64.zip
- Composer
    https://getcomposer.org/download/
- Node.js >= 18 & npm
    https://nodejs.org/en/download/current
- SQLite (sudah tersedia di PHP secara default)

### Langkah Instalasi

**1. Clone atau ekstrak project**
```bash
cd administrasi-gupdi
```

**2. Install dependensi PHP**
```bash
composer install
```

**3. Salin file environment**
```bash
cp .env.example .env
```

**4. Generate application key**
```bash
php artisan key:generate
```

**5. Buat file database SQLite** (jika belum ada)
```bash
touch database/database.sqlite
```
> Di Windows: `New-Item database/database.sqlite`

**6. Jalankan migration dan seeder**
```bash
php artisan migrate --seed
```

Perintah ini akan membuat semua tabel dan membuat akun admin default:
- **Username:** `admin`
- **Password:** `admin123`

**7. Install dependensi Node.js**
```bash
npm install
```

**8. Build assets frontend**
```bash
npm run build
```

**9. Jalankan server**
```bash
php artisan serve
```

Aplikasi dapat diakses di `http://localhost:8000`

---

### Menjalankan Mode Development (Hot Reload)

Buka dua terminal secara bersamaan:

**Terminal 1 — Laravel server:**
```bash
php artisan serve
```

**Terminal 2 — Vite dev server:**
```bash
npm run dev
```

Atau gunakan script `composer dev` yang sudah dikonfigurasi untuk menjalankan semuanya sekaligus:
```bash
composer dev
```

---

## Rute Aplikasi

| Method | URL | Nama Route | Keterangan |
|---|---|---|---|
| GET | `/` | — | Redirect ke halaman login |
| GET | `/login` | `login` | Halaman login |
| POST | `/login` | `login` | Proses autentikasi |
| POST | `/logout` | `logout` | Logout |
| GET | `/dashboard` | `dashboard` | Dashboard utama |
| GET | `/baptis` | `baptis.index` | Daftar data baptis |
| GET | `/baptis/create` | `baptis.create` | Form tambah baptis |
| POST | `/baptis` | `baptis.store` | Simpan data baptis |
| GET | `/baptis/{id}/edit` | `baptis.edit` | Form edit baptis |
| PUT | `/baptis/{id}` | `baptis.update` | Update data baptis |
| DELETE | `/baptis/{id}` | `baptis.destroy` | Hapus data baptis |
| GET | `/penyerahan` | `penyerahan.index` | Daftar penyerahan anak |
| GET | `/penyerahan/create` | `penyerahan.create` | Form tambah penyerahan |
| POST | `/penyerahan` | `penyerahan.store` | Simpan penyerahan |
| GET | `/penyerahan/{id}/edit` | `penyerahan.edit` | Form edit penyerahan |
| PUT | `/penyerahan/{id}` | `penyerahan.update` | Update penyerahan |
| DELETE | `/penyerahan/{id}` | `penyerahan.destroy` | Hapus penyerahan |
| GET | `/pernikahan` | `pernikahan.index` | Daftar data pernikahan |
| GET | `/pernikahan/create` | `pernikahan.create` | Form tambah pernikahan |
| POST | `/pernikahan` | `pernikahan.store` | Simpan pernikahan |
| GET | `/pernikahan/{id}/edit` | `pernikahan.edit` | Form edit pernikahan |
| PUT | `/pernikahan/{id}` | `pernikahan.update` | Update pernikahan |
| DELETE | `/pernikahan/{id}` | `pernikahan.destroy` | Hapus pernikahan |
| GET | `/pengaturan` | `pengaturan.index` | Halaman pengaturan |
| PUT | `/pengaturan` | `pengaturan.update` | Simpan pengaturan |

> Semua route kecuali `/login` memerlukan autentikasi.

---

## Konfigurasi Database

Secara default aplikasi menggunakan **SQLite**. Konfigurasi ada di file `.env`:

```env
DB_CONNECTION=sqlite
DB_DATABASE=/absolute/path/to/database/database.sqlite
```

Untuk menggunakan **MySQL**, ubah konfigurasi `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=administrasi_gupdi
DB_USERNAME=root
DB_PASSWORD=
```

Kemudian jalankan ulang migration:
```bash
php artisan migrate --seed
```

---

## Akun Default

Setelah menjalankan `php artisan migrate --seed`, akun berikut tersedia:

| Field | Value |
|---|---|
| Username | `admin` |
| Password | `admin123` |
| Role | `admin` |

> Sangat disarankan untuk mengganti password setelah pertama kali login di lingkungan produksi.

---

## Menjalankan Test

```bash
php artisan test
```

---

## Lisensi

Aplikasi ini dikembangkan khusus untuk keperluan internal **Gereja GUPDI Jemaat Pasar Legi, Surakarta**.
