<?php

use yii\helpers\Html;
use yii\bootstrap\Modal;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model backend\models\Indent */

$this->title = '订单';
$this->params['breadcrumbs'][] = ['label' => 'Indents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;


$requestUrl = Url::to("/user/settings/profile-modal?book_id=$book->id" );

if(isset($modal)){  // 收货地址设置弹窗
    //$this->registerJs($js);
    $this->registerJs("
        $('#update-modal').modal('show');

",\yii\web\View::POS_READY);
}

?>
<?php
Modal::begin([
    'id' => 'update-modal',
    'header' => '<h4 class="modal-title"></h4>',
    //'footer' =>  Html::submitButton($model->isNewRecord ? Yii::t('common', 'Create') : Yii::t('common', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success pull-right' : 'btn btn-primary pull-right']),
]);?>
<?php $form = \yii\widgets\ActiveForm::begin([
    'id' => 'profile-form',
    'action' =>$requestUrl,
    'options' => ['class' => 'form-horizontal'],
    'fieldConfig' => [
        'template' => "{label}\n<div class=\"col-lg-9\">{input}</div>\n<div class=\"col-sm-offset-3 col-lg-9\">{error}\n{hint}</div>",
        'labelOptions' => ['class' => 'col-lg-2 control-label'],
    ],
    'enableAjaxValidation'   => true,
    'enableClientValidation' => false,
    'validateOnBlur'         => false,
    //'enableAjaxValidation' => true,
    //'validationUrl' => Url::toRoute(['validate-form']),
]); ?>

<?= $form->field($address, 'school_part')->dropDownList(['西南交大_犀浦'=>'西南交大_犀浦','西南交大_九里'=>'西南交大_九里']) ?>

<?= $form->field($address, 'house') ?>
<?= $form->field($address, 'room') ?>
<?= $form->field($address, 'location') ?>
<?= $form->field($address, 'name') ?>
<div class="form-group">
    <div class="col-lg-offset-2 col-lg-5">
        <?= \yii\helpers\Html::submitButton(Yii::t('user', 'Save'), ['class' => 'btn btn-block btn-success','id'=>'profile-update']) ?><br>
    </div>
</div>

<?php \yii\widgets\ActiveForm::end(); ?>

<?php
Modal::end();
?>
<?php
Modal::begin([
    'id' => 'update-modal',
    'header' => '<h4 class="modal-title">支付</h4>',
    //'footer' =>  Html::submitButton($model->isNewRecord ? Yii::t('common', 'Create') : Yii::t('common', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success pull-right' : 'btn btn-primary pull-right']),
]);?>

<?php
Modal::end();
?>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="box  box-solid">
                <div class="box-body " style="min-height: 300px">
                    <div class="row" style="margin-right: 0;margin-left: 0  ;margin-top: 8px;">
                        <div class="book-view-img" style="float: left;">
                            <img class="attachment-img" src="<?= $book->pic ?>" alt="">
                        </div>
                        <div class="book-info" style="float: left;">
                            <h4 class="box-title" style="padding: 0px 0px 10px"><?= $book->name ?><span
                                    class="edition"><?= $book->edition ?></span></h4>
                            <dl class="dl-horizontal" style="color: #9e9e9e">
                                <dt>作者</dt>
                                <dd><?= $book->author ?></dd>
                                <dt>出版社</dt>
                                <dd><?= $book->publish ?></dd>
                            </dl>
                            <dl class="dl-horizontal">
                                <dt>收件人</dt>
                                <dd><?= Yii::$app->user->identity->profile->name ?></dd>
                                <dt>地址</dt>
                                <dd><?= $model->address ?></dd>
                                <dt>电话</dt>
                                <dd><?= $model->tel ?></dd>


                            </dl>

                        </div>
                    </div>
                    <?= $this->render('_form', [
                        'book' => $book,
                        'model' => $model,
                        'oid' => $oid,
                        'paypackage' => $paypackage,
                    ]) ?>

                </div>
            </div>

        </div>
    </div>
</div>