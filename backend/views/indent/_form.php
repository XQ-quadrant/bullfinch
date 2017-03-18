<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $model backend\models\Indent */
/* @var $form yii\widgets\ActiveForm */

foreach($paypackage as $k=>$v){
    $package[$k] = json_encode($v['package']);
    //var_dump($v);die();

}

$js = <<<JS
$(function(){
/*
    $('#indent-create').on('click', function () {
        $('#w0').submit();
    });*/
 var times = $(".selcetor").val();
deadtime(times);
})
function deadtime(times){
    date = new Date();
     //alert(date.getMonth()+parseInt(times));
if(times == 0.5){
date.setDate(date.getDate()+14);
}else{
date.setMonth(date.getMonth()+parseInt(times));
}


    $('#deadlinetime').text(date.toLocaleDateString());
}
 $(".selcetor").change(function(){
    var times = $(this).val();
    deadtime(times);

  })
function onBridgeReady(){

  $('#indent-create').on('click', function () {
    var package;
    switch ($("#w0 :selected").val()){
        case '6': package= {$package['6']};break;
        case '3': package= {$package['3']};break;
        case '1':package= {$package['1']};break;
        case '0.5':package= {$package['0.5']} ;break;
    }


   WeixinJSBridge.invoke('getBrandWCPayRequest',
   package,function(res){
        WeixinJSBridge.log(res.err_msg);
        //alert(res.err_msg);
        if(res.err_msg == "get_brand_wcpay_request:ok" ) {
            //alert(res.err_code+res.err_desc+res.err_msg);
               $('#w0').submit();
        }
     }
   );
});
}
if (typeof WeixinJSBridge == "undefined"){
   if( document.addEventListener ){
       document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
   }else if (document.attachEvent){
       document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
       document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
   }
}else{
   onBridgeReady();
}



JS;
//$this->registerJs($js,['position'=>\yii\web\View::POS_READY])

$this->registerJs($js,\yii\web\View::POS_READY);

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

<div class="indent-form">

    <?php $form = ActiveForm::begin(['class'=>'indent-form']); ?>


    <?= $form->field($model, 'deadline',['inputOptions'=>['class'=>'form-control selcetor']])->dropDownList(
        ['6'=>'六个月，押金 '.round($book->price * 0.2,2).'元',
            '3'=>'三个月，押金 '.round($book->price * 0.2 *3/6,2).'元',
            '1'=>'一个月，押金 '.round($book->price * 0.2 * 1/6,2).'元',
            '0.5'=>'两周，押金 '.round($book->price * 0.2 * 1/12,2).'元'
        ]
        //['prompt' => '请选择']
    ) ?>
    <p class="deadline-tip"></p>
    <div class="form-group ">
        <label class="control-label" for="indent-ext">到期时间</label>
        <span id="deadlinetime" class="deadline-tip" ></span>
        <div class="help-block"></div>
    </div>
    <?= $form->field($model, 'ext')->textarea(['maxlength' => true,]) ?>
    <?= $form->field($model, 'oid')->input('hidden',['value'=>  $oid ])->label(false) ?>


    <div class="form-group">
        <?= Html::Button($model->isNewRecord ? '下单' : '修改', [
            'id'=>'indent-create',
            'class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary'
        ]) ?>
        <?=  Html::a('设置新地址', '#', [
            'id' => 'update_address',
            'data-toggle' => 'modal',
            'data-target' => '#update-modal',
            'class' => 'btn btn-info btn-xs',
        ]); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
