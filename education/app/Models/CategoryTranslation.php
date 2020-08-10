<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CategoryTranslation extends Model
{
    protected $table='category_translation';
    public $timestamps=false;
    protected $fillable=['name','slug','lang','category_id'];





}
