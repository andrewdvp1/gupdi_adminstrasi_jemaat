<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Inertia\Response;

class AccountController extends Controller
{
    public function settings(): Response
    {
        return inertia('Account/Settings', [
            'username' => auth()->user()->username ?? auth()->user()->name,
        ]);
    }

    public function updateUsername(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'username' => ['required', 'string', 'max:50', 'unique:users,username,' . auth()->id()],
        ]);

        auth()->user()->update(['username' => $validated['username']]);

        return back()->with('success', 'Username berhasil diperbarui.');
    }

    public function updatePassword(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'current_password' => ['required', 'current_password'],
            'password'         => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        auth()->user()->update([
            'password' => bcrypt($validated['password']),
        ]);

        return back()->with('success', 'Password berhasil diperbarui.');
    }
}
