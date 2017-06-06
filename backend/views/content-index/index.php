<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ContentIndexSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Content Indices';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="content-index-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Content Index', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'model',
            'body_id',
            'status',
            'views',
            // 'level',
            // 'created_at',
            // 'created_by',
            // 'category',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
