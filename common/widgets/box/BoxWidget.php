<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-5-19
 * Time: 上午7:11
 */
namespace common\widgets\box;

use common\widgets\box\assets\BoxAsset;
use common\models\Document;
use yii\base\Widget;
use yii\db\ActiveRecord;

class BoxWidget extends Widget
{
    public $css = ['warper'=>'box-widget','title'=>'with-border','body'=>'box-profile','css'=>'','icon'];
    public $model ;
    public $activeRecord ;
    public $cate ;
    public $where ;
    public $liNum = 10;
    public $pic;
    public $type;
    public $title;
    public $url;
    public $sort = []; //顺序
    public $config = []; //初始化model参数

    /**
     * 初始化
     * @see \yii\base\Object::init()
     */
    public function init(){
        parent::init();
    }


    public function run(){
        $this->registerClientScript();
        if ($this->model === null) {
            $this->model = new Document();
            $this->activeRecord = $this->model
                ->find()
                ->where(['status'=>Document::STATUS_AOLLOW ,'cate'=>$this->cate])
                ->orderBy(array_merge($this->sort,['level' => SORT_DESC,'create_at'=>SORT_DESC]))
                ->limit($this->liNum)
                ->all();

            //echo 'hehhe';die();
            //$this->activeRecord = Cate::find()->where(['status'=>Cate::$STATUS_AOLLOW])->orderBy(['level' => SORT_DESC])->all();//new Room();//'Hello World';
        }else{
            //$this->model = new ActiveRecord();
            $this->model = new $this->model($this->config);
            $this->activeRecord = $this->model
                ->find()
                ->where($this->where)
                ->orderBy(array_merge($this->sort,['level' => SORT_DESC]))->limit($this->liNum)->all();

        }
        //$room =
        $renderArray = [
            'model'=>$this->model,
            'ac'=>$this->activeRecord,
            'css'=>$this->css,
            'title'=>$this->title,
            'url'=>$this->url,
            'cate'=>$this->cate,
        ];
        if (isset($this->type)){  //渲染视图模板

            return $this->render($this->type,$renderArray);

        }else{
            return $this->render('index',$renderArray); //渲染默认视图模板
        }

        /*switch($this->type){
            case 'pic': return $this->render('listPic',$renderArray);break;

            case 'products-list':return $this->render('products-list',$renderArray);break;

            default:  return $this->render('index',$renderArray);
        }*/
        /*if(!isset($this->pic)){
            return $this->render('index',['model'=>$this->model,'ac'=>$this->activeRecord,'css'=>$this->css,'title'=>$this->title]);

        }else{
            return $this->render('listPic',[
                'model'=>$this->model,
                'ac'=>$this->activeRecord,
                'css'=>$this->css,
                'title'=>$this->title,
                'url'=>$this->url,
            ]);

        }*/
    }
    public function registerClientScript()
    {
        BoxAsset::register($this->view);
        //$script = "FormFileUpload.init();";
        //$this->view->registerJs($script, View::POS_READY);
    }
}