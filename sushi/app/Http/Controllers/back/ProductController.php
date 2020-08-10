<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Image;
use App\Models\Category;
use App\Models\Jobs;
use App\Models\Product;
use App\Models\ProductTranslation;
use File;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index($id)
    {

        $category = Category::where('id', $id)->with('product.translationaz')->first();

        return view('back.product.index', compact('category'));
    }


    public function create()
    {
        $categorys = Category::with('translationaz')->get();
        return view('back.product.create', compact('categorys'));
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
        request()->file('photo')->move(public_path('/uploads/product/'), $photoFile);


        $product = [
            'price' => $request->price,
            'discountprice' => $request->discountprice,
            'lectures' => $request->discountprice,
            'hours' => $request->hours,
            'photo' => $photoFile,
            'category_id' => $request->category_id,
        ];
        $product = Product::create($product);
        if (!$product)
            return redirect()->back()->withErrors('ERROR', 'ERROR');

        $productTr = [
            'name' => $request->name,
            'slug' => $request->slug,
            'description' => $request->description,
            'lang' => 'az',
            'product_id' => $product->id,
            'category_id' => $request->category_id,
        ];
        $productT = ProductTranslation::create($productTr);


        $productLang = ProductTranslation::create($request->all());

        if (!$product && !$productLang)
            return redirect()->back()->with('type', 'danger')->with('mesaj', 'Error!!..Please try again');

        return redirect()
            ->route('admin.product.index',$request->category_id)
            ->with('type', 'success')
            ->with('id', $product->id)
            ->with('mesaj', 'ProductT Created');
    }




    public function destroy($id)
    {
        $product = Product::where('id', $id)->first();
        $last_image_path = public_path("/uploads/product/$product->photo"); // Value is not URL but directory file path
        if (File::exists($last_image_path)) {
            File::delete($last_image_path);
        }
        $product->delete();
        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Silinmə tamamlandı');
    }


    public function edit($id)
    {

        $product = Product::where('id', $id)->with('translationen', 'translationaz','translationru', 'category.translationaz')->first();
        $categorys = Category::all();
        return view('back.product.edit', compact('product', 'categorys'));

    }

    public function update(Request $request, $id)
    {


        $this->validate(request(), [
            'price' => 'required',
            'photo' => 'mimes:jpeg,png,jpg,gif,svg,webp|max:500',
        ]);
        $product = Product::find($id);

        $last_image_path = public_path("/uploads/product/$product->photo"); // Value is not URL but directory file path
        $product->update($request->all());
        if ($request->hasFile('photo')) {
            if (File::exists($last_image_path)) {
                File::delete($last_image_path);
            }
            $image = new Image();
            $path = '/uploads/product/';
            $photoFile = $request->file('photo');
            $photo = $image->image($photoFile, '', '', $path);
            //  $image->removeImage($last_image_path);
            $product->photo = $photo;
            $product->save();
        }

        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Product updated');

    }


    public function update2(Request $request, $id, $lang)
    {

        $this->validate(request(), [
            'name' => 'required',
            'slug' => 'required',
        ]);

//        $matchThese = ['product_id' => $id, 'lang' => $lang];

        $request->request->add(['lang' => $lang,'product_id'=>$id]);

     ProductTranslation::updateOrCreate([
            'product_id'   => $id,'lang'=>$lang
        ],$request->all());





      //  ProductTranslation::firstOrCreate($matchThese,$request->all());
        //  $product = ProductTranslation::where('id',$id)->where('lang',$request->langg)->first();
        //  $product->update($request->all());
        return redirect()
            ->back()
            ->with('type', 'success')
            ->with('mesaj', 'Product updated!...');

    }
}
