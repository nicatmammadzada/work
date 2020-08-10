@extends('back.layouts.master')
@section('title',$title)
@section('head')
    <script type="text/javascript" src="/back/ckeditor/ckeditor.js"></script>
@endsection
@section('page-header')
    @include('back.layouts.include.page-header',compact('crumbs'))
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
        @include('back.layouts.include.alert-messages')
        <!-- Basic layout-->
            <form action="{{route('admin.post.store')}}" class="form-horizontal" method="Post"
                  enctype="multipart/form-data">
                @csrf
                <div class="panel panel-flat">
                    <div class="panel-heading">
                        <h5 class="panel-title">{{$title}}</h5>
                        <div class="heading-elements">
                            <a href="{{route('admin.post')}}"><span
                                    class="label label-success">POSTLARA QAYIT</span></a>
                        </div>
                    </div>

                    <div class="panel-body">

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Categorya:</label>
                            <div class="col-lg-9">
                                <select type="text" class="form-control" name="category_id" value="{{old('title')}}">
                                    @foreach($categorys as $category)
                                        <option value="{{$category->id}}">{{$category->name ?? ''}}</option>
                                    @endforeach
                                    <option value="5">Display</option>
                                </select>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-3 control-label">Ad:</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="title" value="{{old('title')}}">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-3 control-label">Kiçik Mətn:</label>
                            <div class="col-lg-9">
                                <textarea rows="5" cols="5" class="form-control"
                                          name="small_text">{{old('small_text')}}</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Post:</label>
                            <div class="col-lg-9">
                                <textarea class="ckeditor" name="description1" id="editor-readonly" rows="5" cols="5">
                                        {{old('description1')}}
                                </textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-3 control-label">Şəkil:</label>
                            <div class="col-lg-9">
                                <input type="file" name="photo" id="productPhoto" class="file-styled">
                                <span class="help-block">Qəbul edilən uzantılar: gif, png, jpg, jpeg. Maksimum həcm 2Mb olmalıdır.</span>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-3 control-label">Author:</label>
                            <select class="control-label col-lg-3" name="author_id">
                                @foreach($users as $user)
                                    <option {{$user->id==8 ?  'selected' : ''}}  value="{{$user->id}}">{{$user->fullname ?? ''}}</option>
                                @endforeach
                            </select>
                        </div>


                        <div class=" text-right">
                            <button type="submit" class="btn btn-primary">Əlavə et <i
                                    class="icon-arrow-right14 position-right"></i></button>
                        </div>
                    </div>
                </div>
            </form>
            <!-- /basic layout -->
        </div>

    </div>
@endsection
