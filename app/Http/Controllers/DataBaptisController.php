<?php

namespace App\Http\Controllers;

use App\Models\DataBaptis;
use App\Models\Pengaturan;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DataBaptisController extends Controller
{
    public function index(Request $request)
    {
        $pengaturan = Pengaturan::first();
        $tahun = $request->get('tahun', $pengaturan?->tahun_baptis ?? now()->year);

        $data = DataBaptis::whereYear('created_at', $tahun)
            ->orderBy('nomor_urut')
            ->get();

        return Inertia::render('Baptis/Index', [
            'data' => $data,
            'tahun' => (int) $tahun,
            'pengaturan' => $pengaturan,
        ]);
    }

    public function create()
    {
        $lastNomor = DataBaptis::max('nomor_urut') ?? 0;
        return Inertia::render('Baptis/Form', [
            'nextNomor' => $lastNomor + 1,
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nomor_urut' => 'required|integer',
            'nomor_baptis' => 'required|string|max:50',
            'nama_lengkap' => 'required|string|max:100',
            'nama_baptis' => 'required|string|max:100',
            'tempat_lahir' => 'required|string|max:100',
            'tanggal_lahir' => 'required|date',
            'nama_ayah' => 'required|string|max:100',
            'nama_ibu' => 'required|string|max:100',
            'alamat' => 'required|string',
        ]);

        $validated['created_at'] = now();
        DataBaptis::create($validated);

        return redirect()->route('baptis.index')->with('success', 'Data baptis berhasil disimpan.');
    }

    public function edit(DataBaptis $baptis)
    {
        return Inertia::render('Baptis/Form', ['baptis' => $baptis]);
    }

    public function update(Request $request, DataBaptis $baptis)
    {
        $validated = $request->validate([
            'nomor_urut' => 'required|integer',
            'nomor_baptis' => 'required|string|max:50',
            'nama_lengkap' => 'required|string|max:100',
            'nama_baptis' => 'required|string|max:100',
            'tempat_lahir' => 'required|string|max:100',
            'tanggal_lahir' => 'required|date',
            'nama_ayah' => 'required|string|max:100',
            'nama_ibu' => 'required|string|max:100',
            'alamat' => 'required|string',
        ]);

        $baptis->update($validated);

        return redirect()->route('baptis.index')->with('success', 'Data baptis berhasil diperbarui.');
    }

    public function destroy(DataBaptis $baptis)
    {
        $baptis->delete();
        return redirect()->route('baptis.index')->with('success', 'Data baptis berhasil dihapus.');
    }
}
