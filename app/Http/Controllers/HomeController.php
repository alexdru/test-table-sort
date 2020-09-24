<?php

namespace App\Http\Controllers;

use App\Models\Learning;
use App\Models\Org;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        $table = DB::table('learnings')
            ->leftJoin('collaborators', 'learnings.person_id', '=', 'collaborators.id')
            ->leftJoin('courses', 'learnings.course_id', '=', 'courses.id')
            ->Join('orgs','collaborators.org_id', '=', 'orgs.id')
            ->select('orgs.name as org', 'collaborators.fullname as name', 'courses.name as course', 'learnings.state_id as lifetime')
            ->get();

        $orgs = Org::all();
        $startDate = Learning::all('start_date');
        $finishDate = Learning::all('finish_date');

        return view('home', compact(['table', 'orgs', 'startDate', 'finishDate']));
    }
}
