<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Front
use Illuminate\Support\Facades\Artisan;

Route::redirect('/', '/az');

Route::group(['prefix' => '{locale}','namespace' => 'front', 'where' => ['locale' => '[a-zA-Z]{2}'], 'middleware' => 'setLocale'], function () {

    Route::get('/', 'HomeController@index')->name('home');
    Route::get('/haqqimizda', 'HomeController@about')->name('about');


    Route::group(['prefix' => 'xəbərlər', 'as' => 'post.'], function () {

        Route::get('/categorya/{slug}', 'PostController@index')->name('index');
        Route::get('/{slug}', 'PostController@detail')->name('detail');
        Route::post('/update', 'PostController@store')->name('slider.store');
        Route::get('/search', 'PostController@search')->name('search');
    });


    Route::group(['prefix' => 'cources', 'as' => 'cource.'], function () {

        Route::get('/', 'CourceController@index')->name('index');
        Route::get('/{slug}', 'CourceController@detail')->name('detail');

    });



    Route::post('/email', 'ContactController@email')->name('contact.email');


    Route::post('/subscribe', 'SubscribeController@store')->name('subscribe');




});


//Back
Route::group(['prefix' => 'admin', 'namespace' => 'back'], function () {

    Route::redirect('/', '/admin/login');
    Route::get('/login', 'AuthController@index')->name('admin.login');
    Route::post('/login', 'AuthController@login')->name('admin.login');
    Route::get('/logout', 'AuthController@logout')->name('admin.logout');

    Route::group(['middleware' => ['admin', 'history']], function () {
        Route::get('/', 'HomeController@index')->name('admin');

        // PostController with resource
        Route::group(['prefix' => 'post'], function () {
            Route::get('/', 'PostController@index')->name('admin.post');
            Route::get('/create', 'PostController@create')->name('admin.post.create');
            Route::post('/store', 'PostController@store')->name('admin.post.store');
            Route::get('/destroy/{slug}', 'PostController@destroy')->name('admin.post.destroy');
            Route::get('/edit/{slug}', 'PostController@edit')->name('admin.post.edit');
            Route::post('/{slug}/update', 'PostController@update')->name('admin.post.update');
            Route::post('/choose1', 'PostController@choose1')->name('admin.post.choose1');
            Route::post('/choose2', 'PostController@choose2')->name('admin.post.choose2');
            Route::post('/event', 'PostController@event')->name('admin.post.event');
            Route::post('/analitika1', 'PostController@analitika1')->name('admin.post.analitika1');
            Route::post('/analitika2', 'PostController@analitika2')->name('admin.post.analitika2');
            Route::post('/mobile', 'PostController@mobile')->name('admin.post.mobile');
            Route::post('/sem', 'PostController@sem')->name('admin.post.sem');

        });

        Route::group(['prefix' => 'course', 'as' => 'admin.course.'], function () {
            Route::get('/a/{id}', 'CourseController@index')->name('index');
            Route::get('/create', 'CourseController@create')->name('create');

            Route::post('/store', 'CourseController@store')->name('store');
            Route::post('/store2/{id}/{lang}', 'CourseController@store2')->name('store2');
            Route::get('/edit/{id}', 'CourseController@edit')->name('edit');
            Route::post('/update/{id}', 'CourseController@update')->name('update');
            Route::post('/update2/{id}/{lang}','CourseController@update2')->name('update2');
            Route::get('/destroy/{id}', 'CourseController@destroy')->name('destroy');

        });

        Route::group(['prefix' => 'slider', 'as' => 'admin.'], function () {

            Route::get('/destroy/{slug}', 'SliderController@destroy')->name('slider.destroy');
            Route::get('/edit', 'SliderController@edit')->name('slider.edit');
            Route::post('/update', 'SliderController@store')->name('slider.store');
        });

        // AboutController with resource
        Route::group(['prefix' => 'about'], function () {
            Route::get('/', 'AboutController@index')->name('admin.about');
            Route::post('/{id}/update', 'AboutController@update')->name('admin.about.update');
        });

        Route::group(['prefix' => 'pandemia'], function () {
            Route::get('/', 'AboutController@pandemia')->name('admin.pandemia');
            Route::post('/update', 'AboutController@pandemiaUpdate')->name('admin.pandemia.update');
        });

        // ConfigController with resource
        Route::group(['prefix' => 'config'], function () {
            Route::get('/', 'ConfigController@index')->name('admin.config');
            Route::post('/{id}/update', 'ConfigController@update')->name('admin.config.update');
        });

        // ContactController with resource
        Route::group(['prefix' => 'contact'], function () {
            Route::get('/', 'ContactController@index')->name('admin.contact');
            Route::get('/destroy/{slug}', 'ContactController@destroy')->name('admin.contact.destroy');
        });

        // SubscribeController with resource
        Route::group(['prefix' => 'subscribe'], function () {
            Route::get('/', 'SubscribeController@index')->name('admin.subscribe');
            Route::get('/destroy/{slug}', 'SubscribeController@destroy')->name('admin.subscribe.destroy');
        });

        //User controller
        Route::group(['prefix' => 'user'], function () {
            Route::get('/', 'UserController@index')->name('admin.user');
            Route::get('/create', 'UserController@create')->name('admin.user.create');
            Route::post('/store', 'UserController@store')->name('admin.user.store');
            Route::get('/edit/{id}', 'UserController@edit')->name('admin.user.edit');
            Route::post('/{id}/update', 'UserController@update')->name('admin.user.update');
            Route::get('/destroy/{id}', 'UserController@destroy')->name('admin.user.destroy');
            Route::get('/activation/{activation}', 'UserController@activation')->name('activation');
        });


        Route::group(['prefix' => 'video', 'as' => 'admin.video.'], function () {
            Route::get('/', 'VideoController@index')->name('index');
            Route::get('/create', 'VideoController@create')->name('create');
            Route::post('/store', 'VideoController@store')->name('store');
            Route::get('/destroy/{slug}', 'VideoController@destroy')->name('destroy');
            Route::get('/edit/{slug}', 'VideoController@edit')->name('edit');
        });


        Route::group(['prefix' => 'photos','as'=>'admin.photo.'], function () {
            Route::get('/', 'PhotoController@index')->name('index');
            Route::get('/edit/{id}', 'PhotoController@edit')->name('edit');
            Route::post('/create', 'PhotoController@create')->name('create');
            Route::get('/remove/{id}', 'PhotoController@remove')->name('remove');
            Route::post('/store/{id}', 'PhotoController@store')->name('store');
        });

        Route::group(['prefix' => 'jobs','as'=>'admin.job.'], function () {
            Route::get('/', 'JobController@index')->name('index');
            Route::get('/edit/{id}', 'JobController@edit')->name('edit');
            Route::post('/update/{id}', 'JobController@update')->name('update');
            Route::get('/create', 'JobController@create')->name('create');
            Route::post('/store', 'JobController@store')->name('store');
            Route::get('/remove/{id}', 'JobController@remove')->name('remove');
        });

    });
});


//Cache clear
Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:cache');
    return redirect()->back();
})->name('clear.cache');
