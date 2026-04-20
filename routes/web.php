<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DataBaptisController;
use App\Http\Controllers\DataPenyerahanAnakController;
use App\Http\Controllers\DataPernikahanController;
use App\Http\Controllers\ExportController;
use App\Http\Controllers\PengaturanController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return redirect()->route('login');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resource('baptis', DataBaptisController::class)->except(['show'])->parameters(['baptis' => 'baptis']);
    Route::resource('penyerahan', DataPenyerahanAnakController::class)->except(['show']);
    Route::resource('pernikahan', DataPernikahanController::class)->except(['show']);

    Route::get('/pengaturan', [PengaturanController::class, 'index'])->name('pengaturan.index');
    Route::put('/pengaturan', [PengaturanController::class, 'update'])->name('pengaturan.update');

    // Export routes
    Route::get('/export/{modul}/excel', [ExportController::class, 'excel'])->name('export.excel');
    Route::get('/export/{modul}/pdf', [ExportController::class, 'pdf'])->name('export.pdf');

    // Account settings routes
    Route::get('/account/settings', [AccountController::class, 'settings'])->name('account.settings');
    Route::patch('/account/username', [AccountController::class, 'updateUsername'])->name('account.username');
    Route::put('/account/password', [AccountController::class, 'updatePassword'])->name('account.password');
});

require __DIR__.'/auth.php';
