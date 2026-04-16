<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pengaturan', function (Blueprint $table) {
            $table->id();
            $table->integer('tahun_pernikahan');
            $table->integer('tahun_baptis');
            $table->integer('tahun_penyerahan');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pengaturan');
    }
};
