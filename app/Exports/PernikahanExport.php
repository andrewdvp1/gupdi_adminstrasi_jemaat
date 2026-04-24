<?php

namespace App\Exports;

use App\Models\DataPernikahan;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithTitle;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class PernikahanExport implements FromCollection, WithHeadings, WithStyles, WithColumnWidths, WithTitle
{
    public function __construct(private int $tahun) {}

    public function collection()
    {
        return DataPernikahan::where('nomor_surat', 'like', '%/' . $this->tahun)
            ->orderBy('id')
            ->get(['nomor_surat', 'hari', 'tanggal', 'jam', 'gereja', 'nama_pria', 'nama_wanita'])
            ->map(function ($row) {
                $row->tanggal = $row->tanggal ? $row->tanggal->format('d/m/Y') : '-';
                return $row;
            });
    }

    public function headings(): array
    {
        return [
            'No. Surat', 'Hari', 'Tanggal', 'Jam', 'Gereja', 'Nama Pria', 'Nama Wanita',
        ];
    }

    public function title(): string
    {
        return 'Data Pernikahan';
    }

    public function columnWidths(): array
    {
        return [
            'A' => 15, 'B' => 12, 'C' => 15, 'D' => 10, 'E' => 30, 'F' => 25, 'G' => 25,
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
        ];
    }
}
