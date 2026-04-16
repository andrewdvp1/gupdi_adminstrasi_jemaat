<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('data_penyerahan_anak', function (Blueprint $table) {
            $table->id();
            $table->string('nomor_penyerahan', 50);
            $table->string('nama_anak', 100);
            $table->string('tempat_lahir', 50);
            $table->date('tanggal_lahir');
            $table->string('nama_ayah', 100);
            $table->string('nama_ibu', 100);
            $table->text('alamat');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('data_penyerahan_anak');
    }
};
