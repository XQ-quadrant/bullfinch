<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "content_index".
 *
 * @property integer $id
 * @property string $model
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
            [['body_id', 'status', 'views', 'level', 'created_by', 'category'], 'integer'],
            [['created_at'], 'safe'],
            [['model'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', '唯一编号'),
            'model' => Yii::t('app', '模型'),
            'body_id' => Yii::t('app', '主体id'),
            'status' => Yii::t('app', '状态'),
            'views' => Yii::t('app', '浏览量'),
            'level' => Yii::t('app', '等级'),
            'created_at' => Yii::t('app', '创建时间'),
            'created_by' => Yii::t('app', '创建者'),
            'category' => Yii::t('app', '栏目'),
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
