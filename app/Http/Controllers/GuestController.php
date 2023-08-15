<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumni;

class GuestController extends Controller
{

    public function index(Request $request)
    {
        $keterserapan = $request->input('keterserapan');

        $alumniQuery = Alumni::orderBy('created_at');
    
        if ($keterserapan) {
            $alumniQuery->where('keterserapan', $keterserapan);
        }
    
        $alumni = $alumniQuery->get();
    
        // Hitung total data dan persentase
        $totalData = Alumni::count();
        $desiredDataCount1 = Alumni::where('keterserapan', 'wirausaha')->count();
        $desiredDataCount2 = Alumni::where('keterserapan', 'pendidikan profesi')->count();
        $desiredDataCount3 = Alumni::where('keterserapan', 'masa tunggu')->count();
        $desiredDataCount4 = Alumni::where('keterserapan', 'kuliah')->count();
        $desiredDataCount5 = Alumni::where('keterserapan', 'bekerja')->count();
    
        if ($totalData != 0) {
            $percent1 = ($desiredDataCount1 / $totalData) * 100;
            $percent2 = ($desiredDataCount2 / $totalData) * 100;
            $percent3 = ($desiredDataCount3 / $totalData) * 100;
            $percent4 = ($desiredDataCount4 / $totalData) * 100;
            $percent5 = ($desiredDataCount5 / $totalData) * 100;
        } else {
            $percent1 = 0;
            $percent2 = 0;
            $percent3 = 0;
            $percent4 = 0;
            $percent5 = 0;
        }
    
        $count = Alumni::count();
        $wirausaha = Alumni::where('keterserapan', 'wirausaha')->count();
        $bekerja = Alumni::where('keterserapan', 'bekerja')->count();
        $profesi = Alumni::where('keterserapan', 'pendidikan profesi')->count();
        $tunggu = Alumni::where('keterserapan', 'masa tunggu')->count();
        $kuliah = Alumni::where('keterserapan', 'kuliah')->count();
        $data = [
            'title' => 'Dashboard',
            'count' => $count,
            'percent1' => $percent1,
            'percent2' => $percent2,
            'percent3' => $percent3,
            'percent4' => $percent4,
            'percent5' => $percent5,
            'alumni' => $alumni,
            'wirausaha' => $wirausaha,
            'bekerja' => $bekerja,
            'profesi' => $profesi,
            'tunggu' => $tunggu,
            'kuliah' => $kuliah,
        ];
        return view('pages.back.guest.index', $data);
    }
}
