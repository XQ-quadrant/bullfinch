<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\LectureSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lecture-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'time') ?>

    <?= $form->field($model, 'address') ?>

    <?= $form->field($model, 'subject') ?>

    <?= $form->field($model, 'content') ?>

    <?php // echo $form->field($model, 'speaker') ?>

    <?php // echo $form->field($model, 'lecturer_info') ?>

    <?php // echo $form->field($model, 'hint') ?>

    <?php // echo $form->field($model, 'poster') ?>

    <?php // echo $form->field($model, 'icon') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
