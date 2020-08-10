<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Image;
use App\Models\Category;
use App\Models\Course;
use App\Models\CourseTranslation;
use App\Models\Jobs;
use File;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function index($id)
    {

        $category = Category::where('id', $id)->with('course.translationaz')->first();

        return view('back.course.index', compact('category'));
    }


    public function create()
    {
        $categorys = Category::with('translationaz')->get();
        return view('back.course.create', compact('categorys'));
    }


    public function store(Request $request)
    {
        $this->validate(request(), [
            'price' => 'required',
            'photo' => 'required|mimes:jpeg,png,jpg,gif,svg,webp|max:500',
            'slug' => 'required',

        ]);


        $photo = request()->file('photo');
        $photoFile = time() . '.' . $photo->extension();
        request()->file('photo')->move(public_path('/uploads/course/'), $photoFile);


        $course = [
            'price' => $request->price,
            'discountprice' => $request->discountprice,
            'lectures' => $request->discountprice,
            'hours' => $request->hours,
            'photo' => $photoFile,
            'category_id' => $request->category_id,
        ];
        $course = Course::create($course);
        if (!$course)
            return redirect()->back()->withErrors('ERROR', 'ERROR');

        $courseTr = [
            'name' => $request->name,
            'slug' => $request->slug,
            'description' => $request->description,
            'lang' => 'az',
            'course_id' => $course->id,
            'category_id' => $request->category_id,
        ];
        $courseT = CourseTranslation::create($courseTr);


        $courseLang = CourseTranslation::create($request->all());

        if (!$course && !$courseLang)
            return redirect()->back()->with('type', 'danger')->with('mesaj', 'Error!!..Please try again');

        return redirect()
            ->route('admin.course.index',$request->category_id)
            ->with('type', 'success')
            ->with('id', $course->id)
            ->with('mesaj', 'Course Created');
    }




    public function destroy($id)
    {
        $course = Course::where('id', $id)->first();
        $last_image_path = public_path("/uploads/course/$course->photo"); // Value is not URL but directory file path
        if (File::exists($last_image_path)) {
            File::delete($last_image_path);
        }
        $course->delete();
        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Silinmə tamamlandı');
    }


    public function edit($id)
    {

        $course = Course::where('id', $id)->with('translationen', 'translationaz', 'category.translationaz')->first();
        $categorys = Category::all();
        return view('back.course.edit', compact('course', 'categorys'));

    }

    public function update(Request $request, $id)
    {


        $this->validate(request(), [
            'price' => 'required',
            'photo' => 'mimes:jpeg,png,jpg,gif,svg,webp|max:500',
        ]);
        $course = Course::find($id);

        $last_image_path = public_path("/uploads/course/$course->photo"); // Value is not URL but directory file path
        $course->update($request->all());
        if ($request->hasFile('photo')) {
            if (File::exists($last_image_path)) {
                File::delete($last_image_path);
            }
            $image = new Image();
            $path = '/uploads/course/';
            $photoFile = $request->file('photo');
            $photo = $image->image($photoFile, '', '', $path);
            //  $image->removeImage($last_image_path);
            $course->photo = $photo;
            $course->save();
        }

        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Course updated');

    }


    public function update2(Request $request, $id, $lang)
    {
        $this->validate(request(), [
            'name' => 'required',
            'slug' => 'required',
        ]);
        $matchThese = ['id' => $id, 'lang' => $lang];
        CourseTranslation::updateOrCreate($matchThese, $request->all());
        //  $course = CourseTranslation::where('id',$id)->where('lang',$request->langg)->first();
        //  $course->update($request->all());
        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Course updated');

    }
}
