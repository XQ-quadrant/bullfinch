<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Lecture */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Lectures', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lecture-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'time',
            'address',
            //'level'=>['value'=>],
            'subject',
            'content:ntext',
            'speaker',
            'lecturer_info:ntext',
            'hint:ntext',
            'poster:ntext',
            'icon:ntext',
        ],
    ]) ?>

</div>
