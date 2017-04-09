<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Mind */

$this->title = 'Create Mind';
$this->params['breadcrumbs'][] = ['label' => 'Minds', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mind-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
