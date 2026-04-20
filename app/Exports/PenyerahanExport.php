<?php

namespace App\Exports;

use App\Models\DataPenyerahanAnak;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PenyerahanExport implements FromCollection, WithHeadings
{
    public function __construct(private int $tahun) {}

    public function collection()
    {
        return DataPenyerahanAnak::whereYear('created_at', $this->tahun)
            ->get(['nomor_penyerahan', 'nama_anak', 'tempat_lahir',
                   'tanggal_lahir', 'nama_ayah', 'nama_ibu', 'alamat']);
    }

    public function headings(): array
    {
        return [
            'No. Penyerahan', 'Nama Anak', 'Tempat Lahir',
            'Tanggal Lahir', 'Nama Ayah', 'Nama Ibu', 'Alamat',
        ];
    }
}
