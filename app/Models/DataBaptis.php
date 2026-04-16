<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataBaptis extends Model
{
    public $timestamps = false;
    protected $table = 'data_baptis';

    protected $fillable = [
        'nomor_urut', 'nomor_baptis', 'nama_lengkap', 'nama_baptis',
        'tempat_lahir', 'tanggal_lahir', 'nama_ayah', 'nama_ibu',
        'alamat', 'created_at',
    ];

    protected $casts = [
        'tanggal_lahir' => 'date',
        'created_at' => 'datetime',
    ];
}
