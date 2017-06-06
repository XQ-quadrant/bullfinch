<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Lecture;

/**
 * LectureSearch represents the model behind the search form about `backend\models\Lecture`.
 */
class LectureSearch extends Lecture
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['time', 'address', 'subject', 'content', 'speaker', 'lecturer_info', 'hint', 'poster', 'icon'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Lecture::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'time' => $this->time,
        ]);

        $query->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'subject', $this->subject])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'speaker', $this->speaker])
            ->andFilterWhere(['like', 'lecturer_info', $this->lecturer_info])
            ->andFilterWhere(['like', 'hint', $this->hint])
            ->andFilterWhere(['like', 'poster', $this->poster])
            ->andFilterWhere(['like', 'icon', $this->icon]);

        return $dataProvider;
    }
}
