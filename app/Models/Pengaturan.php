<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pengaturan extends Model
{
    public $timestamps = false;
    protected $table = 'pengaturan';

    protected $fillable = [
        'tahun_pernikahan', 'tahun_baptis', 'tahun_penyerahan',
    ];
}
