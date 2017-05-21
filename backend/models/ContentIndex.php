<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "content_index".
 *
 * @property integer $id
 * @property integer $model
 * @property integer $body_id
 * @property integer $status
 * @property integer $views
 * @property integer $level
 * @property string $created_at
 * @property integer $created_by
 * @property integer $category
 */
class ContentIndex extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'content_index';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['model', 'body_id'], 'required'],
            [[ 'body_id', 'status', 'views', 'level', 'created_by', 'category'], 'integer'],
            [['created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '唯一编号',
            'model' => '模型',
            'body_id' => '主体id',
            'status' => '状态',
            'views' => '浏览量',
            'level' => '等级',
            'created_at' => '创建时间',
            'created_by' => '创建者',
            'category' => '栏目',
        ];
    }

    /**
     * @inheritdoc
     * @return ContentIndexQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ContentIndexQuery(get_called_class());
    }
}
