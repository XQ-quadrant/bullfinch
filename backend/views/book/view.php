<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use  backend\models\Package;

/* @var $this yii\web\View */
/* @var $model backend\models\Book */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Books', 'url' => ['index']];

$this->params['breadcrumbs'][] = $this->title;
$user_id = Yii::$app->user->id;
$js = <<<JS
 $('.insert-package').on('click', function () {
 if($('.insert-package').attr('data-col')== "0" ){
        $.ajax({
            //cache: true,
            type: "GET",
            url:'/package/create',
            data:{'book':$model->id},
            //async: false,
            dataType: "json",
            error: function(request) {
                alert("添加失败");
            },
            success: function(data) {
            $('.insert-package').text(data.msg);
            $('.insert-package').attr('class','btn insert-package  btn-sm');
            $('.insert-package').attr('data-col',1);
                //alert(data.msg);
           }

        });
    }else {//($('.insert-package').attr('class')== 'btn insert-package  btn-sm'){
        $.ajax({
            type: "POST",
            url : '/package/delete?id='+$model->id,
            data: {'user_id':$user_id} ,
            dataType: "json",
            error: function(request) {
                alert("失败");
            },
            success: function(data) {
            $('.insert-package').text(data.msg);
            $('.insert-package').attr('class','btn insert-package btn-primary btn-sm');
            $('.insert-package').attr('data-col',0);
           }

        });
    }

   })
JS;

$this->registerJs($js, \yii\web\View::POS_READY);
$css =<<<CSS
@media (min-width: 768px) {
  .skin-book .wrapper-images{
    /*background-image:url(/images/xingkong.jpg);*/
    background-size:100%;
    background-repeat-y: no-repeat;
    /*background-color: #b8bcbf;*/
  }}
CSS;

$this->registerCss($css);

?>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="box  box-solid" style="background: rgba(255, 255, 255, 0.84);">
                <div class="box-body " style="min-height: 300px">
                    <div class="row" style="margin-right: 0;margin-left: 0  ;margin-top: 8px;">
                        <div class="book-view-img" style="float: left;">
                            <img class="attachment-img" src="<?= $model->pic ?>" alt="">
                        </div>
                        <div class="book-info" style="float: left;">
                            <h4 class="box-title" style="padding: 0px 0px 10px"><?= $model->name ?><span
                                    class="edition"><?= $model->edition ?></span></h4>
                            <dl class="dl-horizontal">
                                <dt>作者</dt>
                                <dd><?= $model->author ?></dd>
                                <dt>出版社</dt>
                                <dd><?= $model->publish ?></dd>
                                <dt>原价</dt>
                                <dd><?= $model->price ?>元</dd>
                                <dt class="pledge">押金</dt>
                                <dd class="pledge"><?= $model->price * 0.2 ?>元 / 学期</dd>
                            </dl>
                            <?php foreach ($model->tags as $tag) { ?>
                                <span class="label label-info tag"><?= $tag->tag ?></span>
                            <?php } ?>


                        </div>
                    </div>
                    <div class="row" style="padding-left: 9px;padding-right: 9px;padding-top: 9px;">
                        <div class="col-md-6 col-xs-12">
                            <a href="/indent/create?book_id=<?= $model->id ?>" type="button"
                               class="btn  btn-primary btn-flat btn-sm">
                                免费领取</a>
                            <?php if(!Yii::$app->user->isGuest){

                            if ($package_status == Package::STATUS_collect) { ?>
                                <button type="button" class="btn insert-package  btn-sm btn-flat"
                                        data-id="<?= Package::STATUS_collect ?>" data-col="1">
                                    已加入书袋
                                </button>
                                <?php
                            } else { ?>
                                <button type="button" class="btn insert-package btn-primary btn-sm btn-flat"
                                        data-id="<?= Package::STATUS_lose ?>" data-col="0">
                                    加入书袋
                                </button>
                            <?php } }?>
                        </div>
                        <!--<div class="col-md-2 col-xs-4" style="padding: 8px 15px;">
                    <p  class="" style="">押金 <? /*=$model->price*0.2*/ ?> 元</p>
                    </div>-->


                    </div>
<div>
                    <div class="col-md-12" style="min-height: 18em;">


                        <hr style="    margin-top: 10px;
    margin-bottom: 10px;
    border: 0;
    border-top: 1px solid rgba(151, 154, 157, 0.32);">
                        <h5 style="color: #959494;
    margin-bottom: 5px;">简介</h5>
                        <?= $model->background ?>
                    </div>
</div>
                    <!-- Widget: user widget style 1 -->

                </div>

            </div>

        </div>