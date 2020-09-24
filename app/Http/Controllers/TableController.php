<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TableController extends Controller
{
    public function filter(Request $request) {
        $request->validate([
            'org_id' => 'required|string',
            'start_date' => 'required|string',
            'finish_date' => 'required|string'
        ]);

        $orgId = $request->org_id;
        $startDate = $request->start_date;
        $finishDate = $request->finish_date;

        $table = DB::table('learnings')
            ->leftJoin('collaborators', 'learnings.person_id', '=', 'collaborators.id')
            ->leftJoin('courses', 'learnings.course_id', '=', 'courses.id')
            ->Join('orgs','collaborators.org_id', '=', 'orgs.id')
            ->where('orgs.id', '=', $orgId)
            ->where('learnings.start_date','>=', $startDate)
            ->where('learnings.finish_date','<=', $finishDate)
            ->select('orgs.name as org', 'collaborators.fullname as name', 'courses.name as course', 'learnings.state_id as lifetime')
            ->get();

        return $table;
    }
}
