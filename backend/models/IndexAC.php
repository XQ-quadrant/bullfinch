<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 17-5-7
 * Time: 下午4:30
 */

namespace backend\models;

use Yii;

class IndexAC extends \yii\db\ActiveRecord
{
    public $body_id;
    public $category;
    public $level;
    public $status;
    public $created_by;
    public $created_at;
    public $ContentIndex;

    public function getContentIndex()
    {
        return $this->hasOne(ContentIndex::className(), ['id' => 'body_id']);
    }


    /*public function __get($name)
    {
        return parent::__get($name)?:$this->ContentIndex->$name;
    }*/

    public function insert($runValidation = true, $attributes = null)
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
    }




}