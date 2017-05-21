<?php

namespace ccmr\models;

use Yii;

/**
 * This is the model class for table "staff".
 *
 * @property integer $id
 * @property string $type
 * @property string $name
 * @property string $public_email
 * @property string $icon
 * @property string $title
 * @property string $location
 * @property string $tel
 * @property string $education
 * @property string $resume
 * @property string $achievement
 * @property string $created_at
 * @property string $updated_at
 * @property integer $status
 */
class Staff extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'staff';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type'], 'required'],
            [['icon', 'resume', 'achievement'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['status'], 'integer'],
            [['type', 'tel'], 'string', 'max' => 100],
            [['name'], 'string', 'max' => 250],
            [['public_email', 'title', 'location', 'education'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {

        return [
            'id' => 'ID',
            'type' => '类型',//Yii::t('model/staff','Type'),
            'name' => '姓名',//Yii::t('model/staff','Name'),
            'public_email' =>'邮箱',// Yii::t('model/staff','Public Email'),
            'icon' => '头像',//Yii::t('model/staff','Icon'),
            'title' => '职称',//Yii::t('model/staff','Title'),
            'position' => '职位',//Yii::t('model/staff','Title'),
            'location' => '地址',//Yii::t('model/staff','Location'),
            'tel' => '电话',//Yii::t('model/staff','Tel'),
            'education' => '学历',//Yii::t('model/staff','Education'),
            'resume' => '履历',//Yii::t('model/staff','Resume'),
            'achievement' => Yii::t('model/staff','研究成果'),
            'created_at' => Yii::t('model/staff','Created At'),
            'updated_at' => Yii::t('model/staff','Updated At'),
            'status' => Yii::t('model/staff','Status'),
        ];
    }
}
