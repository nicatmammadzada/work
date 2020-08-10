<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseTranslation extends Model
{
    protected $table='course_translation';
    public $timestamps=false;
    protected $fillable=['name','slug','lang','course_id','description'];





}
