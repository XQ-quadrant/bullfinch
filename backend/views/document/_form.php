<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\ueditor\UEditor;

/* @var $this yii\web\View */
/* @var $model common\models\Document */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="document-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'breviary')->textarea(['rows' => 6]) ?>

    <!-- //$form->field($model, 'content')->textarea(['rows' => 6]) -->
    <?= $form->field($model, 'content')->label(null,['class'=>'control-label room-label'])->widget(UEditor::className(),['class'=>'controls ','id'=>'content','name'=>'content','class'=>'controls' ])  ?>


    <?= $form->field($model, 'author')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'cate')->textInput() ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
