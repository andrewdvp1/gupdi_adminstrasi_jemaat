<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataPernikahan extends Model
{
    public $timestamps = false;
    protected $table = 'data_pernikahan';

    protected $fillable = [
        'nomor_surat', 'hari', 'tanggal', 'jam', 'gereja', 'alamat_gereja',
        'nama_pria', 'tempat_lahir_pria', 'tanggal_lahir_pria', 'ayah_pria', 'ibu_pria', 'alamat_pria',
        'nama_wanita', 'tempat_lahir_wanita', 'tanggal_lahir_wanita', 'ayah_wanita', 'ibu_wanita', 'alamat_wanita',
        'ttd_pria', 'ttd_wanita', 'created_at',
    ];

    protected $casts = [
        'tanggal' => 'date',
        'tanggal_lahir_pria' => 'date',
        'tanggal_lahir_wanita' => 'date',
        'created_at' => 'datetime',
    ];
}
