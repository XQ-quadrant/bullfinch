<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 17-5-7
 * Time: 下午4:30
 */

namespace backend\models;

use Yii;

/**
 * Class IndexAC
 * @package backend\models
 */
class IndexAC extends \yii\db\ActiveRecord
{
    /*public $body_id;
    public $category;
    public $level;
    public $status;
    public $created_by;
    public $created_at;*/
    /**
     * @var \backend\models\ContentIndex 内容索引
     */

    public $contentIndex;

    public function getContentIndex()
    {
        return $this->hasOne(ContentIndex::className(), ['id' => 'body_id']);
        //return $this->contentIndex = ContentIndex::findOne(['body_id'=>$this->id]);

    }

    public function init()
    {

        parent::init();
        $this->contentIndex = new ContentIndex();//$this->hasOne(ContentIndex::className(), ['id' => 'body_id']);//
        if(isset($this->attributes['id'])){
            $this->contentIndex = ContentIndex::findOne(['body_id'=>$this->id]);
            //die('ccc');
            //$this->contentIndex = $this->hasOne(ContentIndex::className(), [ 'id' =>'body_id' ]);
        }else{
            //die('cc');
            $this->contentIndex =  new ContentIndex();
        }
       // var_dump($this);
        //if()
    }


    /*public function __get($name)
    {
        //echo $name;
        //var_dump($this->getContentIndex());
        //return $this->getContentIndex();
        //die();
        if(!empty(parent::__get($name))){
            return parent::__get($name);
        }else{
            !empty(parent::__get($name))?parent::__get($name):$this->getContentIndex()->$name
        }

        return !empty(parent::__get($name))?parent::__get($name):$this->getContentIndex()->$name;
    }*/
    public function load($data, $formName = null)
    {
        return parent::load($data, $formName) && $this->contentIndex->load($data, $formName);
        //return parent::load($data, $formName);
    }

    /*public function validate($attributeNames = null, $clearErrors = true)
    {
        return parent::validate($attributeNames, $clearErrors) && $this->contentIndex->validate($attributeNames, $clearErrors);
    }*/

    public function save($runValidation = true, $attributeNames = null)
    {
        $isValid = parent::save($runValidation, $attributeNames);

        $this->contentIndex->body_id       = $this->id;
        $this->contentIndex->model         = self::className();
        $this->contentIndex->created_by    = Yii::$app->user->id;
        //var_dump($this->contentIndex->model  );die();
        return $isValid && $this->contentIndex->save($runValidation, $attributeNames);
        //$profile->save(false);
        //return parent::save($runValidation, $attributeNames);
    }

    public function delete()
    {
        $this->contentIndex = ContentIndex::findOne(['body_id'=>$this->id]);
        //$this->contentIndex = $this->hasOne(ContentIndex::className(), ['body_id' => 'id']);
        var_dump($this->contentIndex);die();
        //var_dump($this->contentIndex);die();
        return parent::delete() && $this->contentIndex->delete();
    }
    /*public function insert($runValidation = true, $attributes = null)
    {
        $orgData =$this->attributes;
        if(parent::insert($runValidation, $attributes)) {
            $contentIndex = new ContentIndex();
            $contentIndex->body_id       = $this->id;
            $contentIndex->category      = $this->category;
            $contentIndex->level         = $this->level;
            $contentIndex->status         = $this->status;


            $contentIndex->model         = self::className();
            $contentIndex->created_by    = Yii::$app->user->id;
            //新增索引
            if($contentIndex->insert()){
                return true;
            }else{

                //var_dump($contentIndex->errors);
                // 索引新建失败，删除内容数据
                //$this->attributes =$orgData;
                $this->delete();
                return false;
            }

        }else{
            return false;
        }
    }

    public function update($runValidation = true, $attributeNames = null)
    {

        $orgData = $this->attributes;
        if (parent::update($runValidation, $attributeNames)!==false){
            $contentIndex = ContentIndex::findOne(['body_id'=>$this->id]);
            //$contentIndex->body_id       = $this->id;
            $contentIndex->category      = $this->category;
            $contentIndex->level         = $this->level;
            $contentIndex->status         = $this->status;
//var_dump($contentIndex->attributes);die();
                //更新索引
            if($contentIndex->update()){

                return true;
            }else{
                // 索引更新失败，数据恢复
                $this->attributes =$orgData;
                $this->update();
                return false;

            }
        }else{
            //var_dump($this->errors);die();
            return false;
        }
    }*/

}