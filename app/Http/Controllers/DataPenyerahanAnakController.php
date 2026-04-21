<?php

namespace App\Http\Controllers;

use App\Models\DataPenyerahanAnak;
use App\Models\Pengaturan;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DataPenyerahanAnakController extends Controller
{
    public function index(Request $request)
    {
        $pengaturan = Pengaturan::first();
        $tahun = $request->get('tahun', $pengaturan?->tahun_penyerahan ?? now()->year);

        $data = DataPenyerahanAnak::whereYear('created_at', $tahun)
            ->orderBy('id')
            ->paginate(15)
            ->withQueryString();

        return Inertia::render('Penyerahan/Index', [
            'data' => $data,
            'tahun' => (int) $tahun,
            'pengaturan' => $pengaturan,
        ]);
    }

    public function create()
    {
        return Inertia::render('Penyerahan/Form');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nomor_penyerahan' => 'required|string|max:50',
            'nama_anak' => 'required|string|max:100',
            'tempat_lahir' => 'required|string|max:50',
            'tanggal_lahir' => 'required|date',
            'nama_ayah' => 'required|string|max:100',
            'nama_ibu' => 'required|string|max:100',
            'alamat' => 'required|string',
        ]);

        DataPenyerahanAnak::create($validated);

        return redirect()->route('penyerahan.index')->with('success', 'Data penyerahan anak berhasil disimpan.');
    }

    public function edit(DataPenyerahanAnak $penyerahan)
    {
        return Inertia::render('Penyerahan/Form', ['penyerahan' => $penyerahan]);
    }

    public function update(Request $request, DataPenyerahanAnak $penyerahan)
    {
        $validated = $request->validate([
            'nomor_penyerahan' => 'required|string|max:50',
            'nama_anak' => 'required|string|max:100',
            'tempat_lahir' => 'required|string|max:50',
            'tanggal_lahir' => 'required|date',
            'nama_ayah' => 'required|string|max:100',
            'nama_ibu' => 'required|string|max:100',
            'alamat' => 'required|string',
        ]);

        $penyerahan->update($validated);

        return redirect()->route('penyerahan.index')->with('success', 'Data penyerahan anak berhasil diperbarui.');
    }

    public function destroy(DataPenyerahanAnak $penyerahan)
    {
        $penyerahan->delete();
        return redirect()->route('penyerahan.index')->with('success', 'Data penyerahan anak berhasil dihapus.');
    }
}
