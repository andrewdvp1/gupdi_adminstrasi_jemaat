<?php

namespace App\Exports;

use App\Models\DataPenyerahanAnak;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithTitle;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class PenyerahanExport implements FromCollection, WithHeadings, WithStyles, WithColumnWidths, WithTitle
{
    public function __construct(private int $tahun) {}

    public function collection()
    {
        return DataPenyerahanAnak::where('nomor_penyerahan', 'like', '%/' . $this->tahun)
            ->orderBy('id')
            ->get(['nomor_penyerahan', 'nama_anak', 'tempat_lahir',
                   'tanggal_lahir', 'nama_ayah', 'nama_ibu', 'alamat'])
            ->map(function ($row) {
                $row->tanggal_lahir = $row->tanggal_lahir ? $row->tanggal_lahir->format('d/m/Y') : '-';
                return $row;
            });
    }

    public function headings(): array
    {
        return [
            'No. Penyerahan', 'Nama Anak', 'Tempat Lahir',
            'Tanggal Lahir', 'Nama Ayah', 'Nama Ibu', 'Alamat',
        ];
    }

    public function title(): string
    {
        return 'Data Penyerahan Anak';
    }

    public function columnWidths(): array
    {
        return [
            'A' => 15, 'B' => 25, 'C' => 18,
            'D' => 15, 'E' => 22, 'F' => 22, 'G' => 35,
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
            'G' => [
                'alignment' => ['wrapText' => true],
            ],
        ];
    }
}
