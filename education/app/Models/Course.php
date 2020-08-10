<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Course extends Model
{
    protected $table = 'course';
    public $timestamps = true;
    use SoftDeletes;
    protected $fillable = ['name', 'slug', 'price', 'discountprice','lectures','hours','photo','category_id' ];




    public function translation()
    {
        app()->setLocale(request()->segment(1));
        return $this->hasOne(CourseTranslation::class, 'course_id')->where('lang', app()->getLocale());
    }

    public function translationaz()
    {

        return $this->hasOne(CourseTranslation::class, 'course_id')->where('lang', 'az');
    }

    public function translationen()
    {

        return $this->hasOne(CourseTranslation::class, 'course_id')->where('lang', 'en');
    }

    public function category()
    {
        return $this->belongsTo(Course::class, 'category_id');
    }


    public function course_updated_at()
    {
                $date=\Carbon\Carbon::parse($this->created_at);
        return $date->isoFormat('MMM D YYYY');
    }


}
