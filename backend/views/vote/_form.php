<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Vote */
/* @var $form yii\widgets\ActiveForm */
$template = '{label}{input}<span class="fa  fa-clock-o form-control-feedback"></span>{error}{hint}';
$label = ['class' => "col-sm-2 text-c control-label form-label"];
?>
<div class="register-box">
<div class=" register-box-body">

    <h4 class="login-box-msg text-blue"> 捐 书 </h4>
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'num',['template' => '{label}{input}<span class="fa fa-book form-control-feedback"></span>{error}{hint}',
        'options'=>['class'=>'form-group has-feedback']])->textInput(['type'=>'number','placeholder'=>'大概多少本呢？'])->label(false) ?>
    <?= $form->field($model, 'date', ['template' => $template,'options'=>['class'=>'form-group has-feedback']])->textInput(['placeholder'=>'我们上门取书的时间？'])->label(false) ?>
    <label class="text-center text-blue col-xs-12" style="font-weight:normal;width:100%" for="vote-school">上门取书的地址</label>
    <?= $form->field($model, 'school',['options'=>['class'=>'form-group col-xs-6','style'=>'padding-left: 0px;']])->dropDownList(['西南交通大学'=>'西南交大'])
        ->label(false) ?>

    <?= $form->field($model, 'school_part',['options'=>['class'=>'form-group col-xs-6','style'=>'padding-right: 0px;']])
        ->dropDownList(['西南交大_犀浦'=>'犀浦','西南交大_九里'=>'西南交大_九里'])->label(false) ?>

    <?= $form->field($model, 'house',['options'=>['class'=>'form-group col-xs-6','style'=>'padding-left: 0px;']])->textInput(['placeholder'=>'宿舍楼'])->label(false) ?>

    <?= $form->field($model, 'room',['options'=>['class'=>'form-group col-xs-6','style'=>'padding-right: 0px;']])->textInput(['placeholder'=>'寝室号'])->label(false) ?>

    <?= $form->field($model, 'ext')->textarea(['rows' =>4,'placeholder'=>'备注'])->label(false) ?>
    <?= $form->field($model, 'tel',['options'=>['class'=>'form-group has-feedback','style'=>'padding-left: 0px;']])->textInput(['placeholder'=>'可以留下电话联系哦'])
        ->label(false) ?>
    <div class="form-group">
        <?= Html::submitButton('<i class="fa fa-smile-o"></i> ~ 捐书' , ['class' => 'btn btn-block btn-social btn-info btn-flat']) ?>
    </div>

    <?php ActiveForm::end(); ?>
    </div>
</div>

