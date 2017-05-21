<?php

namespace backend\models;

/**
 * This is the ActiveQuery class for [[ContentIndex]].
 *
 * @see ContentIndex
 */
class ContentIndexQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return ContentIndex[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return ContentIndex|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
