<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "lecture".
 *
 * @property integer $id
 * @property string $time
 * @property string $address
 * @property string $subject
 * @property string $content
 * @property string $speaker
 * @property string $lecturer_info
 * @property string $hint
 * @property string $poster
 * @property string $icon
 */
class Lecture extends IndexAC
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lecture';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['time', 'address', 'subject'], 'required'],
            [['time'], 'safe'],
            [['category','level','status'], 'integer'], //栏目
            [['content', 'lecturer_info', 'hint', 'poster', 'icon'], 'string'],
            [['address', 'subject', 'speaker'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'time' => '演讲时间',
            'address' => '演讲地点',
            'subject' => '主题',
            'content' => '内容',
            'speaker' => '演讲者',
            'lecturer_info' => '演讲者信息',
            'hint' => '备注',
            'poster' => '发布者',
            'icon' => 'Icon',
        ];
    }



}
