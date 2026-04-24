<?php

namespace App\Http\Controllers;

use App\Exports\BaptisExport;
use App\Exports\PenyerahanExport;
use App\Exports\PernikahanExport;
use App\Models\DataBaptis;
use App\Models\DataPenyerahanAnak;
use App\Models\DataPernikahan;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Maatwebsite\Excel\Facades\Excel;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class ExportController extends Controller
{
    private const VALID_MODULS = ['baptis', 'penyerahan', 'pernikahan'];

    public function excel(string $modul, Request $request): BinaryFileResponse
    {
        if (!in_array($modul, self::VALID_MODULS)) {
            abort(404);
        }

        $tahun = (int) $request->query('tahun', now()->year);

        return match ($modul) {
            'baptis'     => Excel::download(new BaptisExport($tahun), 'data-baptis-' . $tahun . '.xlsx'),
            'penyerahan' => Excel::download(new PenyerahanExport($tahun), 'data-penyerahan-anak-' . $tahun . '.xlsx'),
            'pernikahan' => Excel::download(new PernikahanExport($tahun), 'data-pernikahan-' . $tahun . '.xlsx'),
        };
    }

    public function pdf(string $modul, Request $request): Response
    {
        if (!in_array($modul, self::VALID_MODULS)) {
            abort(404);
        }

        $tahun = (int) $request->query('tahun', now()->year);
        $pattern = '%/' . $tahun;

        if ($modul === 'baptis') {
            $view = 'exports.baptis';
            $data = DataBaptis::where('nomor_baptis', 'like', $pattern)->orderBy('nomor_urut')->get();
            $filename = 'data-baptis-' . $tahun . '.pdf';
        } elseif ($modul === 'penyerahan') {
            $view = 'exports.penyerahan';
            $data = DataPenyerahanAnak::where('nomor_penyerahan', 'like', $pattern)->orderBy('id')->get();
            $filename = 'data-penyerahan-anak-' . $tahun . '.pdf';
        } else {
            $view = 'exports.pernikahan';
            $data = DataPernikahan::where('nomor_surat', 'like', $pattern)->orderBy('id')->get();
            $filename = 'data-pernikahan-' . $tahun . '.pdf';
        }

        return Pdf::loadView($view, ['data' => $data, 'tahun' => $tahun])
            ->setPaper('a4', 'landscape')
            ->download($filename);
    }
}
