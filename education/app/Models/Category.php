<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    public $timestamps = false;
    protected $fillable = ['name', 'slug', 'parent_id'];




    public function translation()
    {
        app()->setLocale(request()->segment(1));
        return $this->hasOne(CategoryTranslation::class, 'category_id')->where('lang', app()->getLocale());
    }

    public function translationaz()
    {

        app()->setLocale(request()->segment(1));
        return $this->hasOne(CategoryTranslation::class, 'category_id')->where('lang', 'az');
    }

    public function course()
    {
        return $this->hasMany(Course::class, 'category_id')->orderBy('id','desc');
    }

}
