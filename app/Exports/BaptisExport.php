<?php

namespace App\Exports;

use App\Models\DataBaptis;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BaptisExport implements FromCollection, WithHeadings
{
    public function __construct(private int $tahun) {}

    public function collection()
    {
        return DataBaptis::whereYear('created_at', $this->tahun)
            ->get(['nomor_urut', 'nomor_baptis', 'nama_lengkap', 'nama_baptis',
                   'tempat_lahir', 'tanggal_lahir', 'nama_ayah', 'nama_ibu', 'alamat']);
    }

    public function headings(): array
    {
        return [
            'No. Urut', 'No. Baptis', 'Nama Lengkap', 'Nama Baptis',
            'Tempat Lahir', 'Tanggal Lahir', 'Nama Ayah', 'Nama Ibu', 'Alamat',
        ];
    }
}
