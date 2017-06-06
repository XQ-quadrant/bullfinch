<?php

namespace frontend\models;

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
 * @property string $gbkchart
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
            [['type','name','public_email'], 'required'],
            [['icon', 'resume', 'achievement','tag'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['status','level'], 'integer', 'max' => 100],
            [['type', 'tel','gbkchart'], 'string', 'max' => 100],
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
    public function setTag($content)  //待优化
    {
        $oldTags = Tag::findAll(['model_id' => $this->id]);  //清空原先标签
        foreach ($oldTags as $v) {
            $v->delete();
        }
        $tags = explode(',', $content);

        $tag = new Tag();   //插入新的标签
        $model_id = $this->id;
        foreach ($tags as $v) {
            $tag = new Tag();
            $tag->model_id = $model_id;
            $tag->tag = $v;
            $tag->save();
        }
    }

    public function getTags()
    {
        //$tag = new Tag();
        return $tag = Tag::findAll(['model_id' => $this->id]);

    }
    public function getTag()
    {
        $tag = Tag::findAll(['model_id' => $this->id]);
        $tagarr = [];
        foreach ($tag as $v) {
            $tagarr[] = $v->tag;
        }
        $tags = implode(',', $tagarr);

        return $tags;
    }

    public function save($runValidation = true, $attributeNames = null)
    {
        $this->gbkchart = $this->getFirstCharter($this->name);
        return parent::save($runValidation, $attributeNames); // TODO: Change the autogenerated stub
    }

    public function getFirstCharter($str)
    {
        if (empty($str)) {
            return '';
        }
        $fchar = ord($str{0});
        if ($fchar >= ord('A') && $fchar <= ord('z')) return strtoupper($str{0});
        $s1 = iconv('UTF-8', 'gbk', $str);
        $s2 = iconv('gbk', 'UTF-8', $s1);
        $s = $s2 == $str ? $s1 : $str;
        $asc = ord($s{0}) * 256 + ord($s{1}) - 65536;
        if ($asc >= -20319 && $asc <= -20284) return 'A';
        if ($asc >= -20283 && $asc <= -19776) return 'B';
        if ($asc >= -19775 && $asc <= -19219) return 'C';
        if ($asc >= -19218 && $asc <= -18711) return 'D';
        if ($asc >= -18710 && $asc <= -18527) return 'E';
        if ($asc >= -18526 && $asc <= -18240) return 'F';
        if ($asc >= -18239 && $asc <= -17923) return 'G';
        if ($asc >= -17922 && $asc <= -17418) return 'H';
        if ($asc >= -17417 && $asc <= -16475) return 'J';
        if ($asc >= -16474 && $asc <= -16213) return 'K';
        if ($asc >= -16212 && $asc <= -15641) return 'L';
        if ($asc >= -15640 && $asc <= -15166) return 'M';
        if ($asc >= -15165 && $asc <= -14923) return 'N';
        if ($asc >= -14922 && $asc <= -14915) return 'O';
        if ($asc >= -14914 && $asc <= -14631) return 'P';
        if ($asc >= -14630 && $asc <= -14150) return 'Q';
        if ($asc >= -14149 && $asc <= -14091) return 'R';
        if ($asc >= -14090 && $asc <= -13319) return 'S';
        if ($asc >= -13318 && $asc <= -12839) return 'T';
        if ($asc >= -12838 && $asc <= -12557) return 'W';
        if ($asc >= -12556 && $asc <= -11848) return 'X';
        if ($asc >= -11847 && $asc <= -11056) return 'Y';
        if ($asc >= -11055 && $asc <= -10247) return 'Z';
        return null;
    }
}
