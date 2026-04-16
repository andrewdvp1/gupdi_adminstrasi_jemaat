<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DataBaptisController;
use App\Http\Controllers\DataPenyerahanAnakController;
use App\Http\Controllers\DataPernikahanController;
use App\Http\Controllers\PengaturanController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return redirect()->route('login');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resource('baptis', DataBaptisController::class)->except(['show']);
    Route::resource('penyerahan', DataPenyerahanAnakController::class)->except(['show']);
    Route::resource('pernikahan', DataPernikahanController::class)->except(['show']);

    Route::get('/pengaturan', [PengaturanController::class, 'index'])->name('pengaturan.index');
    Route::put('/pengaturan', [PengaturanController::class, 'update'])->name('pengaturan.update');
});

require __DIR__.'/auth.php';
