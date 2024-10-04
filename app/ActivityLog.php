<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class ActivityLog extends Model
{
    //
    use LogsActivity;

    protected $table = 'activity_log';
    protected $fillable = [
        'log_name',
        'description',
        'subject_id',
        'subject_type',
        'causer_id',
        'causer_type',
        'properties',
        'created_at',
        'updated_at',
        'batch_uuid'

    ];
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['name', 'text']);
        // Chain fluent methods for configuration options
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'causer_id');
    }
}
