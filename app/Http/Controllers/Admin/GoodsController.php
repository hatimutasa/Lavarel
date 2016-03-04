<?php namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\Cache;
class GoodsController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{  
	    if (!$_POST){
	        return view('admin.goods.index');
	    }
	    if (!$_FILES['fileName']['tmp_name']){
	        return $this->error('上传文件为空！');
	    } 
        $path = './upload/goods/'.date('Ymd').'/';
        is_dir($path) or mkdir($path,0777,true);
        $img_width = $img_height = 100;
        $img_name = time().'_'.$img_height.'x'.$img_height.'.jpg';
        Image::configure(array('driver' => 'GD'));
        $image = Image::make($_FILES['fileName']['tmp_name'])->resize($img_height,$img_width)->save($path.$img_name);
        dump($image);die;
	    
	}
	/**
	 * 测试
	 * 
	 * @return 
	 * @author cong.cheng <2016年3月4日 下午2:38:36>
	 */
	public function test(){
	    Cache::put('a','tttgggt',10);
	    $test = Cache::pull('a');
	    dump($test);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('admin.goods.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
