<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;
use common\models\Cate;
/* @var $this yii\web\View */
/* @var $model backend\models\Lecture */
/* @var $form yii\widgets\ActiveForm */

$cate = Cate::findOne(['id'=>Yii::$app->request->get('cate')])? Cate::findOne(['id'=>Yii::$app->request->get('cate')]): Cate::findOne($model->getAttribute('cate'));

?>

<div class="lecture-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'time')
        ->widget(DateTimePicker::className(),[
        //'language'=>'zh-CN',
        'name' => 'dp_3',
        'type' => DateTimePicker::TYPE_COMPONENT_APPEND,
        //'value' => '23-Feb-1982 12:35 AM',
        'pluginOptions' => [
            'autoclose'=>true,
            'format' => 'yyyy-m-dd'
            //'format' => 'dd-M-yyyy HH:ii A'
        ]
    ]) ?>
    <?= $form->field($model->contentIndex, 'category')->textInput(['type'=>'number']) ?>
    <?= $form->field($model->contentIndex, 'level')->textInput(['type'=>'number']) ?>

    <?= $form->field($model, 'address')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'subject')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'speaker')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'lecturer_info')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'hint')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'poster')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'icon')->widget('common\widgets\file_upload\FileUpload',[
        'config'=>[]
    ]) ?>
    <?= $form->field($model->contentIndex, 'status')->dropDownList([1=>'发布',2=>'隐藏']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
