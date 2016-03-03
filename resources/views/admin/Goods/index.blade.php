@extends('app')

@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-10 col-md-offset-1">
      <div class="panel panel-default">
        <div class="panel-heading">图片上传</div>

        <div class="panel-body">

        <form action="{{ URL('admin/goods/index') }}" method="POST" enctype="multipart/form-data">
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <input type="file" required="required"  class="btn btn-success" name="fileName" /><br/>
          <button class="btn btn-primary">上传</button>

        </form>
          
        </div>
      </div>
    </div>
  </div>
</div>
@endsection