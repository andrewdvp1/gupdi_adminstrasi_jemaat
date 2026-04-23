<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('data_baptis', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('nomor_urut')->nullable();
            $table->string('nomor_baptis', 50);
            $table->string('nama_lengkap', 100);
            $table->string('nama_baptis', 100)->nullable();
            $table->string('tempat_lahir', 100)->nullable();
            $table->date('tanggal_lahir')->nullable();
            $table->string('nama_ayah', 100)->nullable();
            $table->string('nama_ibu', 100)->nullable();
            $table->text('alamat')->nullable();
            $table->timestamp('created_at')->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('data_baptis');
    }
};
