<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;

class SetLocale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {



            app()->setLocale($request->segment(1));




        View::share('lang', \app()->getLocale());
      //  App::setLocale(Session::get('lang') ?? 'az');

        return $next($request);
    }
}
