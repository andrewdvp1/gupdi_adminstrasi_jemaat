<?php

namespace App\Http\Controllers;

use App\Models\Pengaturan;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PengaturanController extends Controller
{
    public function index()
    {
        $pengaturan = Pengaturan::first() ?? new Pengaturan([
            'tahun_pernikahan' => now()->year,
            'tahun_baptis' => now()->year,
            'tahun_penyerahan' => now()->year,
        ]);

        return Inertia::render('Pengaturan/Index', ['pengaturan' => $pengaturan]);
    }

    public function update(Request $request)
    {
        $validated = $request->validate([
            'tahun_pernikahan' => 'required|integer|min:2000|max:2100',
            'tahun_baptis' => 'required|integer|min:2000|max:2100',
            'tahun_penyerahan' => 'required|integer|min:2000|max:2100',
        ]);

        Pengaturan::updateOrCreate(['id' => 1], $validated);

        return redirect()->route('pengaturan.index')->with('success', 'Pengaturan berhasil disimpan.');
    }
}
