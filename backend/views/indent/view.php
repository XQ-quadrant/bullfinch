<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Indent */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Indents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="indent-view">

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
            'oid',
            'bookname',
            'user.profile.name',
            'address:ntext',
            'ext',
            'create_at',
            'deadline',
            'status',
            'school',
            'house',
            'room',
            'money',
            'sender_id',
        ],
    ]) ?>

</div>
