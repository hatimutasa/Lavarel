<?php namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;

abstract class Controller extends BaseController {

	use DispatchesCommands, ValidatesRequests;
    
	/**
	 * 错误页面
	 * @param string $err 错误信息
	 * @param number $time 跳转时间
	 * @return 
	 * @author cong.cheng <2016年3月3日 下午3:43:17>
	 */
	public function error($err = '页面错误',$time = 3){
	    if (!is_string($err)) $err = 'error';
	    $data = array('err'=>$err, 'time'=>$time);
	    return view('errors.error')->with($data);
	}
}
