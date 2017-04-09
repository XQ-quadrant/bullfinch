<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\web\View;
use kartik\datetime\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\Textbook */
/* @var $form yii\widgets\ActiveForm */
$template = '{label}<div class="col-sm-10">{input}{error}{hint}</div>';
$label = ['class' => "col-sm-2 text-c control-label form-label"];
/*$this->registerCssFile('/adminlte/plugins/jquery-tags-input/jquery.tagsinput.css');
$this->registerJsFile('/adminlte/plugins/jquery-tags-input/jquery.tagsinput.js',[
    'depends'=>'backend\assets\AdminLteAsset']);
$this->registerJsFile('/adminlte/plugins/jquery-tags-input/tagsinput-init.js',[
    'depends'=>'backend\assets\AdminLteAsset']);*/
?>


<div class=" row">

    <div class="col-lg-8 ">
        <div class="box box-info">
            <div class="box-header with-border">
                <h4 class="">建立图书</h4>
            </div>

            <?php $form = ActiveForm::begin(['options' => ['class' => 'form-horizontal']]); ?>
            <div class="box-body">

                <?= $form->field($model, 'name', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'publish', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <?= $form->field($model, 'background', ['template' => $template])->textarea(['rows' => 6])->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <?= $form->field($model, 'price', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'edition', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'author', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'publish_at', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'publish_num', ['template' => $template])->textInput(['maxlength' => true,])->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <?= $form->field($model, 'amount', ['template' => $template])->textInput()->label(null, ['class' => 'col-sm-2 control-label']) ?>
                <?= $form->field($model, 'tag', ['template' => $template])->widget('common\widgets\tags\Tags')->label(null, ['class' => 'col-sm-2 control-label']) ?>

                <?= $form->field($model, 'pic',['template' => $template])->widget('common\widgets\file_upload\FileUpload',[
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

