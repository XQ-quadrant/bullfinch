<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-5-19
 * Time: 上午7:11
 */
namespace backend\widgets\catalog;

use common\models\Cate;
use common\models\Document;
use yii\base\Widget;
use yii\db\ActiveRecord;

class CatalogWidget extends Widget
{
    public $css = ['warper'=>'box-widget','title'=>'with-border','body'=>'box-profile'];
    public $model ;
    public $activeRecord ;
    public $pre_cate = 1 ; //上级栏目id
    public $where ;
    public $liNum = 10;
    public $pic;
    public $title;
    public $url;
    public $current_cate; //当前栏目

    /**
     * 初始化
     * @see \yii\base\Object::init()
     */
    public function init(){
        parent::init();
    }


    public function run(){
        if ($this->model === null) {
            $this->model = new Cate();

            if($this->pre_cate==1 && isset($this->current_cate)){
                $current_cate = Cate::findOne(['id'=>$this->current_cate]);
                $this->pre_cate = $current_cate->pre_cate;
                //var_dump($this->pre_cate);die();
            }

            $this->activeRecord = $this->model   //获取活动记录
                ->find()
                ->where(['status'=>Cate::STATUS_AOLLOW ,'pre_cate'=>$this->pre_cate])
                ->orderBy(['level' => SORT_ASC])
                ->limit($this->liNum)
                ->all();
        }else{

            $this->model = new $this->model();
            $this->activeRecord = $this->model
                ->find()
                ->where($this->where)
                ->orderBy(['level' => SORT_ASC])->limit($this->liNum)->all();
        }
        //$room =
            return $this->render('index',[
                'model'=>$this->model,
                'ac'=>$this->activeRecord,
                'css'=>$this->css,
                'title'=>$this->title,
                'url'=>$this->url,
            ]);

    }
    protected function findByCate($cate){
        return Document::find()
            ->select(['title','id'])
            ->where(['cate'=>$cate])
            ->all();
    }
}