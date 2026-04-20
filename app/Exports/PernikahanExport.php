<?php

namespace App\Exports;

use App\Models\DataPernikahan;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PernikahanExport implements FromCollection, WithHeadings
{
    public function __construct(private int $tahun) {}

    public function collection()
    {
        return DataPernikahan::whereYear('created_at', $this->tahun)
            ->get(['nomor_surat', 'hari', 'tanggal', 'jam', 'gereja', 'nama_pria', 'nama_wanita']);
    }

    public function headings(): array
    {
        return [
            'No. Surat', 'Hari', 'Tanggal', 'Jam', 'Gereja', 'Nama Pria', 'Nama Wanita',
        ];
    }
}
