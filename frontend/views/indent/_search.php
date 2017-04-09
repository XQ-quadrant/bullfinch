<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\IndentSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="indent-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'book_id') ?>

    <?= $form->field($model, 'user_id') ?>

    <?= $form->field($model, 'address') ?>

    <?= $form->field($model, 'ext') ?>
    <?= $form->field($model, 'deadline') ?>

    <?php // echo $form->field($model, 'create_at') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'school') ?>

    <?php // echo $form->field($model, 'house') ?>

    <?php // echo $form->field($model, 'room') ?>

    <?php // echo $form->field($model, 'money') ?>

    <?php // echo $form->field($model, 'sender_id') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
