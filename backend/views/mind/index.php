<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MindSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Minds';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mind-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Mind', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'username',
            'content:ntext',
            'user_id',
            'create_at',
            // 'img:ntext',
            // 'status',
            // 'likes',

            [
                'class' => 'yii\grid\ActionColumn',
                //'template' => '{update}'.Helper::filterActionColumn(['view', 'activate', 'delete']),

            ],
        ],
    ]); ?>
</div>
