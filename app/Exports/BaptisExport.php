<?php

namespace App\Exports;

use App\Models\DataBaptis;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithTitle;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class BaptisExport implements FromCollection, WithHeadings, WithStyles, WithColumnWidths, WithTitle
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

    public function title(): string
    {
        return 'Data Baptis';
    }

    public function columnWidths(): array
    {
        return [
            'A' => 10, 'B' => 15, 'C' => 25, 'D' => 20,
            'E' => 18, 'F' => 15, 'G' => 22, 'H' => 22, 'I' => 35,
        ];
    }

    public function styles(Worksheet $sheet): array
    {
        return [
            1 => [
                'font'    => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill'    => ['fillType' => 'solid', 'startColor' => ['argb' => 'FF4A7C59']],
                'borders' => ['allBorders' => ['borderStyle' => 'thin']],
            ],
            'I' => [
                'alignment' => ['wrapText' => true],
            ],
        ];
    }
}
