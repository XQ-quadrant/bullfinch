<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Staff */
/* @var $form yii\widgets\ActiveForm */

$list = [
    '全职教师'=>'全职教师',
    '客座教授'=>'客座教授',
    '兼职教授'=>'兼职教授',
    '办公室工作人员'=>'办公室工作人员',
    '其他'=>'其他'];
?>

<div class="staff-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'type')->dropDownList($list) ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'public_email')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'icon')->widget('common\widgets\icon_upload\IconUpload',[
        'config'=>[]
    ]) ?>


    <?= $form->field($model, 'tag')->widget('common\widgets\tags\Tags')->label('职称') ?>


    <?= $form->field($model, 'location')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tel')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'education')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'resume')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'achievement')->textarea(['rows' => 6]) ?>



    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? '创建' : '更新', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
