<?php

namespace App\Http\Controllers;

use App\Models\DataBaptis;
use App\Models\DataPenyerahanAnak;
use App\Models\DataPernikahan;
use Inertia\Inertia;

class DashboardController extends Controller
{
    public function index()
    {
        return Inertia::render('Dashboard', [
            'stats' => [
                'baptis' => DataBaptis::count(),
                'penyerahan' => DataPenyerahanAnak::count(),
                'pernikahan' => DataPernikahan::count(),
            ],
        ]);
    }
}
