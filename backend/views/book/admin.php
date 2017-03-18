<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\BookSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '图书信息';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="book-index">

    <h3><?= Html::encode($this->title) ?></h3>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Book', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'name',
            'publish',
            'author',
            'edition',
            // 'pic:ntext',
            // 'background:ntext',
             'price',
            // 'create_at',
            // 'publish_at',
            // 'publish_num',
             'amount',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
