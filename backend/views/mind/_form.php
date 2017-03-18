<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Mind */
/* @var $form yii\widgets\ActiveForm */
$template = '{label}<div class="col-sm-10">{input}{error}{hint}</div>';
$label = ['class' => "col-sm-2 text-c control-label form-label"];
?>
<div class="report-form  row">

    <div class="col-lg-8 ">
        <div class="box box-info">
            <div class="box-header with-border">
                <h4 class="">摘记</h4>
            </div>
            <?php $form = ActiveForm::begin(['options' => ['class' => 'form-horizontal']]); ?>
            <div class="box-body">
                <?= $form->field($model, 'title', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <?= $form->field($model, 'content', ['template' => $template])->textarea(['rows' => 6])->label(null, ['class' => 'col-sm-2 control-label']) ?>


                <?= $form->field($model, 'img',['template' => $template])->widget('common\widgets\file_upload\FileUpload',[
                    'config'=>[]
                ])->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <div class="form-group">
                </div>
            </div>
            <div class="box-footer">

                <?= Html::submitButton($model->isNewRecord ? Yii::t('common', 'Create') : Yii::t('common', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success pull-right' : 'btn btn-primary pull-right']) ?>


            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>

