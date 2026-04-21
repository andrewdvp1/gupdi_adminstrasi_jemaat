<?php

namespace App\Http\Controllers;

use App\Models\DataPernikahan;
use App\Models\Pengaturan;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DataPernikahanController extends Controller
{
    public function index(Request $request)
    {
        $pengaturan = Pengaturan::first();
        $tahun = $request->get('tahun', $pengaturan?->tahun_pernikahan ?? now()->year);

        $data = DataPernikahan::whereYear('created_at', $tahun)
            ->orderBy('id')
            ->paginate(15)
            ->withQueryString();

        return Inertia::render('Pernikahan/Index', [
            'data' => $data,
            'tahun' => (int) $tahun,
            'pengaturan' => $pengaturan,
        ]);
    }

    public function create()
    {
        return Inertia::render('Pernikahan/Form');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nomor_surat' => 'required|string|max:50',
            'hari' => 'required|string|max:20',
            'tanggal' => 'required|date',
            'jam' => 'required',
            'gereja' => 'required|string|max:150',
            'alamat_gereja' => 'required|string',
            'nama_pria' => 'required|string|max:100',
            'tempat_lahir_pria' => 'required|string|max:100',
            'tanggal_lahir_pria' => 'required|date',
            'ayah_pria' => 'required|string|max:100',
            'ibu_pria' => 'required|string|max:100',
            'alamat_pria' => 'required|string',
            'nama_wanita' => 'required|string|max:100',
            'tempat_lahir_wanita' => 'required|string|max:100',
            'tanggal_lahir_wanita' => 'required|date',
            'ayah_wanita' => 'required|string|max:100',
            'ibu_wanita' => 'required|string|max:100',
            'alamat_wanita' => 'required|string',
        ]);

        $validated['created_at'] = now();
        DataPernikahan::create($validated);

        return redirect()->route('pernikahan.index')->with('success', 'Data pernikahan berhasil disimpan.');
    }

    public function edit(DataPernikahan $pernikahan)
    {
        return Inertia::render('Pernikahan/Form', ['pernikahan' => $pernikahan]);
    }

    public function update(Request $request, DataPernikahan $pernikahan)
    {
        $validated = $request->validate([
            'nomor_surat' => 'required|string|max:50',
            'hari' => 'required|string|max:20',
            'tanggal' => 'required|date',
            'jam' => 'required',
            'gereja' => 'required|string|max:150',
            'alamat_gereja' => 'required|string',
            'nama_pria' => 'required|string|max:100',
            'tempat_lahir_pria' => 'required|string|max:100',
            'tanggal_lahir_pria' => 'required|date',
            'ayah_pria' => 'required|string|max:100',
            'ibu_pria' => 'required|string|max:100',
            'alamat_pria' => 'required|string',
            'nama_wanita' => 'required|string|max:100',
            'tempat_lahir_wanita' => 'required|string|max:100',
            'tanggal_lahir_wanita' => 'required|date',
            'ayah_wanita' => 'required|string|max:100',
            'ibu_wanita' => 'required|string|max:100',
            'alamat_wanita' => 'required|string',
        ]);

        $pernikahan->update($validated);

        return redirect()->route('pernikahan.index')->with('success', 'Data pernikahan berhasil diperbarui.');
    }

    public function destroy(DataPernikahan $pernikahan)
    {
        $pernikahan->delete();
        return redirect()->route('pernikahan.index')->with('success', 'Data pernikahan berhasil dihapus.');
    }
}
