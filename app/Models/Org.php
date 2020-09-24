<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Org extends Model
{
    use HasFactory;

    public function collaborator(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Collaborator::class);
    }
}
