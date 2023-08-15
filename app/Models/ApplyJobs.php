<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ApplyJobs extends Model
{
    use HasFactory;
    protected $fillable = [
        'nis', 'job_id', 'status'
    ];
    
    
}
