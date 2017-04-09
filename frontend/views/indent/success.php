<?php
use yii\bootstrap\Modal;
use yii\helpers\Html;
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-9-2
 * Time: 下午6:01
 */
/*echo Html::a('创建', '#', [
    'id' => 'create',
    'data-toggle' => 'modal',
    'data-target' => '#success-modal',
    'class' => 'btn btn-success',
]);*/


$this->registerJs("
$('#success-modal').modal('show');


",\yii\web\View::POS_READY);
?>

<!--<div class="example-modal">
    <div class="modal in" id="success-modal" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">下单成功</h4>
                </div>
                <div class="modal-body">-->
                    <?php Modal::begin([
    'id' => 'success-modal',
    'header' => '<h4 class="modal-title">下单成功</h4>',
    'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>',
]); ?>
                    <p>快递员正在即将上路…</p>
                    <?php Modal::end(); ?>
               <!-- </div>
                <div class="modal-footer">
                    <a href="/" type="button" class="btn btn-primary pull-left" data-dismiss="modal">返回</a>
                    <button type="button" class="btn btn-default ">查看订单</button>
                </div>
            </div>
        </div>
    </div>

</div>
-->
