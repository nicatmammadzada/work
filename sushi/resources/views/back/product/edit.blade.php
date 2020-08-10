@extends('back.layouts.master')

@section('title','product-edit')
@section('head')
    <script type="text/javascript" src="/back/ckeditor/ckeditor.js"></script>
@endsection
@section('page-header')
    {{--    @include('back.layouts.include.page-header',compact('crumbs'))--}}
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
        @include('back.layouts.include.alert-messages')
        <!-- Basic layout-->

            <div class="row">
                <div class="">
                    <div class="panel panel-flat">

                        <div class="panel-heading">
                            <h6 class="panel-title">..<a class="heading-elements-toggle"><i
                                        class="icon-more"></i></a></h6>
                            <div class="heading-elements">
                                <ul class="icons-list">
                                    <li><a data-action="collapse" class=""></a></li>
                                    <li><a data-action="reload"></a></li>
                                    <li><a data-action="close"></a></li>
                                </ul>
                            </div>
                        </div>


                        <div class="panel-body" style="display: block;">
                            <div class="panel-heading">
                                <h5 class="panel-title label label-success">{{$product->translationaz->name ?? ''}}</h5>
                                <div class="heading-elements">
                                    <a href="{{route('admin.product.index',$product->category_id)}}"><span
                                            class="label label-success">KURSLARA QAYIT</span></a>
                                </div>
                            </div>

                            <form action="{{route('admin.product.update',$product->id)}}" class="form-horizontal"
                                  method="Post"
                                  enctype="multipart/form-data">
                                @csrf

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">Kategorya:</label>
                                    <div class="col-lg-6">
                                        <select type="text" class="form-control" name="category_id"
                                        >
                                            @foreach($categorys as $category)
                                                <option
                                                    {{$category->id==$product->category_id ? 'selected' : ''}} value="{{$category->id}}">{{$category->translationaz->name ?? ''}}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">Price:</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="price"
                                               value="{{old('price',$product->price ?? '')}}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label">DiscountPrice:</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="discountprice"
                                               value="{{old('discountprice',$product->discountprice ?? '')}}">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-lg-3 control-label">Şəkil:</label>
                                    <div class="col-lg-6">
                                        <input type="file" name="photo" id="productPhoto"
                                               class="file-styled form-control">
                                        <span class="help-block">Qəbul edilən uzantılar: gif, png, jpg, jpeg,webp. Maksimum həcm 500 kb olmalıdır.</span>
                                    </div>
                                </div>


                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Update <i
                                            class="icon-arrow-right14 position-right"></i></button>
                                </div>

                            </form>

                            <div class="tabbable">
                                <ul class="nav nav-tabs nav-tabs-highlight text-center">


                                    <li class="active"><a href="#centered-tab1" data-toggle="tab"
                                                          aria-expanded="true">AZ</a></li>
                                    <li class=""><a href="#centered-tab2" data-toggle="tab"
                                                    aria-expanded="false">EN</a></li>
                                    <li class=""><a href="#centered-tab3" data-toggle="tab"
                                                    aria-expanded="false">RU</a></li>

                                </ul>

                                <div class="tab-content">


                                    <div class="tab-pane active" id="centered-tab1">
                                        <form action="{{route('admin.product.update2',[$product->id,'az'])}}"
                                              class="form-horizontal"
                                              method="Post"
                                              enctype="multipart/form-data">@csrf


                                            <div class="panel-body">


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Name:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="name"
                                                               value="{{old('name',$product->translationaz->name ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Slug:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="slug"
                                                               value="{{old('slug',$product->translationaz->slug ?? '')}}">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Detail:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" placeholder="1,240 g | 5 hissə | 90 kkal"
                                                               class="form-control" name="detail"
                                                               value="{{old('detail',$product->translationaz->detail ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Description:</label>
                                                    <div class="col-lg-9">
                                <textarea class="ckeditor" name="description" id="editor-readonly" rows="5" cols="5">
                                        {{old('description',$product->translationaz->description ?? '')}}
                                </textarea>
                                                    </div>
                                                </div>


                                            </div>

                                            <div class="text-right">
                                                <button type="submit" class="btn btn-primary">Update <i
                                                        class="icon-arrow-right14 position-right"></i></button>
                                            </div>

                                        </form>
                                    </div>

                                    <div class="tab-pane " id="centered-tab2">
                                        <form action="{{route('admin.product.update2',[$product->id,'en'])}}"
                                              class="form-horizontal"
                                              method="Post"
                                              enctype="multipart/form-data">
                                            @csrf


                                            <div class="panel-body">


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Name:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="name"
                                                               value="{{old('name',$product->translationen->name ?? '')}}">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Slug:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="slug"
                                                               value="{{old('slug',$product->translationen->slug ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Detail:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" placeholder="1,240 g | 5 hissə | 90 kkal"
                                                               class="form-control" name="detail"
                                                               value="{{old('detail',$product->translationen->detail ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Description:</label>
                                                    <div class="col-lg-9">
                                <textarea class="ckeditor" name="description" id="editor-readonly" rows="5" cols="5">
                                        {{old('description',$product->translationaz->description ?? '')}}
                                </textarea>
                                                    </div>
                                                </div>


                                            </div>

                                            <div class="text-right">
                                                <button type="submit" class="btn btn-primary">Update <i
                                                        class="icon-arrow-right14 position-right"></i></button>
                                            </div>

                                        </form>
                                    </div>


                                    <div class="tab-pane " id="centered-tab3">
                                        <form action="{{route('admin.product.update2',[$product->id,'ru'])}}"
                                              class="form-horizontal"
                                              method="Post"
                                              enctype="multipart/form-data">
                                            @csrf


                                            <div class="panel-body">


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Name:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="name"
                                                               value="{{old('name',$product->translationru->name ?? '')}}">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Slug:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" class="form-control" name="slug"
                                                               value="{{old('slug',$product->translationru->slug ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Detail:</label>
                                                    <div class="col-lg-9">
                                                        <input type="text" placeholder="1,240 g | 5 hissə | 90 kkal"
                                                               class="form-control" name="detail"
                                                               value="{{old('detail',$product->translationru->detail ?? '')}}">
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Description:</label>
                                                    <div class="col-lg-9">
                                <textarea class="ckeditor" name="description" id="editor-readonly" rows="5" cols="5">
                                        {{old('description',$product->translationru->description ?? '')}}
                                </textarea>
                                                    </div>
                                                </div>


                                            </div>

                                            <div class="text-right">
                                                <button type="submit" class="btn btn-primary">Update <i
                                                        class="icon-arrow-right14 position-right"></i></button>
                                            </div>

                                        </form>
                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- /basic layout -->
        </div>

    </div>
@endsection
