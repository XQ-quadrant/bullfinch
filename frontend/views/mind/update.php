<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Mind */

$this->title = 'Update Mind: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Minds', 'url' => ['list-all']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="mind-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
