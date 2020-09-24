<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public function learning(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Learning::class);
    }
}
