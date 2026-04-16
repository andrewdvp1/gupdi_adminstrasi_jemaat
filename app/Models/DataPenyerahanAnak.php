<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataPenyerahanAnak extends Model
{
    protected $table = 'data_penyerahan_anak';

    protected $fillable = [
        'nomor_penyerahan', 'nama_anak', 'tempat_lahir', 'tanggal_lahir',
        'nama_ayah', 'nama_ibu', 'alamat',
    ];

    protected $casts = [
        'tanggal_lahir' => 'date',
    ];
}
