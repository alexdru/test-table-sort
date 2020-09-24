<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Collaborator extends Model
{
    use HasFactory;

    public function org(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Org::class);
    }

    public function learning(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Learning::class);
    }
}
