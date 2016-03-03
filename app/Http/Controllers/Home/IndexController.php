<?php namespace App\Http\Controllers\Home;
use App\Http\Controllers\Controller;

use App\Http\Models\Category;
use Illuminate\Support\Facades\Input;

use Maatwebsite\Excel\Facades\Excel;

/**
 *
 *
 * @author cong.cheng <2016年1月18日 下午5:19:54>
 * @copyright Copyright (C) 2016 AddCn.SZ
 * @version 2.0 IndexController.php
 */
class IndexController extends Controller{

    public function __construct(){
        // 获取菜单栏
        $menuData = Category::where('pid',0)->whereIn('c_position',[6,7,8,9])->get()->toArray();
        view()->share('menuData', $menuData);
//         $this->middleware('auth');
        
    }
    /**
     * 首页
     * 
     * @return 
     * @author cong.cheng <2016年1月18日 下午5:29:36>
     */
    public function index(){   
        // 获取首页分类数据
        $cateNames = Category::where('c_status',1)->whereIn('c_position',[1,2,3,4,5])->get();
        // 位置分类
        $nameData = array();
        foreach ($cateNames as $val){
            $nameData[$val->c_position][] = $val;
        }
        
        return view('home.index.index',['action'=>'index','nameData'=>$nameData]);  
    }

    public function test(){
        echo Input::get('a');die;
        return redirect('/')->withErrors('cuwu');
    }
    /**
     * 列表页
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function lists(){
//         echo Input::get('cid');die;
       return view('home.index.lists',['action'=>'lists']);
    }
    /**
     * 导出excel (可以写到helper文件里面)
     */
    public function exportExcel() {
        $data = array(
                        array('data1', 'data2'),
                        array('data3', 'data4')
        );
    
        Excel::create('Filename', function($excel) use($data) {
    
            $excel->sheet('SheetnameLee', function($sheet) use($data) {
                $sheet->prependRow(1, array(
                                'prepended 001', 'prepended 002'
                ));
    
                $sheet->setSize(array(
                                'A1' => array(
                                                'width'     => 30,
                                                'height'    => 20
                                )
                ));
                for($i=2; $i<10; $i++){
                    $sheet->row($i, array(
                                    'test'.$i, 'test'.($i+1)
                    ));
                }//end for()
            });
    
                $excel->sheet('First sheet', function($sheet) {
                    $sheet->row(1, array(
                                    'test1', 'test2'
                    ));
                });
                // Our second sheet
                $excel->sheet('Second sheet', function($sheet) {
                    $sheet->fromArray(array(
                                    array('data1', 'data2'),
                                    array('data3', 'data4')
                    ));
                });
        })->export('xls');
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function men(){
        return view('home.index.men',['action'=>'men']);
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function women(){
        return view('home.index.women',['action'=>'women']);
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function single(){
        return view('home.index.single',['action'=>'collection']);
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function collection(){
        return view('home.index.collection',['action'=>'collection']);
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function articles(){
        return view('home.index.articles');
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function contact(){
        return view('home.index.contact');
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function privacy(){
        return view('home.index.privacy');
    }
    /**
     *
     *
     * @return
     * @author cong.cheng <2016年2月23日 下午12:02:05>
     */
    public function signup(){
        return view('home.index.signup');
    }
    
    
    
    
}