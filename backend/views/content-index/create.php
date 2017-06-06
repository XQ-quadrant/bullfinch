<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\ContentIndex */

$this->title = 'Create Content Index';
$this->params['breadcrumbs'][] = ['label' => 'Content Indices', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="content-index-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
