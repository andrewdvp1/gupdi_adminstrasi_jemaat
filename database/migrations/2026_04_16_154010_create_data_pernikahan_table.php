<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('data_pernikahan', function (Blueprint $table) {
            $table->id();
            $table->string('nomor_surat', 50);
            $table->string('hari', 20);
            $table->date('tanggal');
            $table->time('jam');
            $table->string('gereja', 150);
            $table->text('alamat_gereja');
            $table->string('nama_pria', 100);
            $table->string('tempat_lahir_pria', 100);
            $table->date('tanggal_lahir_pria');
            $table->string('ayah_pria', 100);
            $table->string('ibu_pria', 100);
            $table->text('alamat_pria');
            $table->string('nama_wanita', 100);
            $table->string('tempat_lahir_wanita', 100);
            $table->date('tanggal_lahir_wanita');
            $table->string('ayah_wanita', 100);
            $table->string('ibu_wanita', 100);
            $table->text('alamat_wanita');
            $table->string('ttd_pria', 255)->nullable();
            $table->string('ttd_wanita', 255)->nullable();
            $table->timestamp('created_at')->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('data_pernikahan');
    }
};
