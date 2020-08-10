<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    protected $table = 'product';
    public $timestamps = true;
    use SoftDeletes;
    protected $fillable = ['name', 'slug', 'price', 'discountprice','detail','photo','category_id' ];




    public function translation()
    {
        app()->setLocale(request()->segment(1));
        return $this->hasOne(ProductTranslation::class, 'product_id')->where('lang', app()->getLocale());
    }

    public function translationaz()
    {

        return $this->hasOne(ProductTranslation::class, 'product_id')->where('lang', 'az');
    }

    public function translationen()
    {

        return $this->hasOne(ProductTranslation::class, 'product_id')->where('lang', 'en');
    }

    public function translationru()
    {

        return $this->hasOne(ProductTranslation::class, 'product_id')->where('lang', 'ru');
    }

    public function category()
    {
        return $this->belongsTo(Product::class, 'category_id');
    }


    public function product_updated_at()
    {
                $date=\Carbon\Carbon::parse($this->created_at);
        return $date->isoFormat('MMM D YYYY');
    }


}
