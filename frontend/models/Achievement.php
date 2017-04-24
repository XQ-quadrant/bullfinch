<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "achievement".
 *
 * @property integer $id
 * @property string $author
 * @property string $title
 * @property string $periodical
 * @property string $year
 * @property string $address
 * @property string $serial_number
 * @property string $ei
 * @property string $hint
 */
class Achievement extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'achievement';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['author', 'title', 'periodical',  'serial_number', ], 'required'],
            [['title', 'serial_number', 'ei', 'hint'], 'string'],
            [['year','publish_at'], 'safe'],
            [['author', 'periodical', 'address'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('common', 'ID'),
            'author' => Yii::t('common', 'Author'),
            'title' => Yii::t('common', 'title'),
            'periodical' => Yii::t('common', 'Periodical'),
            'year' => Yii::t('common', 'Year'),
            'address' => Yii::t('common', 'Address'),
            'serial_number' => Yii::t('common', 'Serial Number'),
            'ei' => Yii::t('common', 'Ei'),
            'hint' => Yii::t('common', 'Hint'),
            'publish_at' => Yii::t('common', '发表时间'),
        ];
    }
    public function create(){
        $year_id = self::find()->where(['year'=>date('Y')])->count();
        $this->year_id = $year_id +1;

        return $this->save();
    }
}
