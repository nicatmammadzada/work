<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Posts;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

                $categorys = Category::with('translation','translationaz')->get();
        View::composer(['front.layouts.include.header','back.layouts.include.main-sidebar'], function ($view) use ($categorys) {
            $view->with('categorys', $categorys);
        });

    }
}
