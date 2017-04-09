<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\data\Pagination;
use yii\widgets\LinkPager;
/* @var $this yii\web\View */
/* @var $searchModel common\models\search\ReportSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('common', 'Reports');
$this->params['breadcrumbs'][] = $this->title;

$count = $dataProvider->getCount();
$totalCount = $dataProvider->getTotalCount();
$pages = new Pagination([ 'totalCount' =>$totalCount, 'pageSize' => 5]);
$data = $dataProvider->getModels();

?>
<div class="report-index">
    <div class="row">
    <?php  //echo $this->render('_search', ['model' => $searchModel]); ?>

    </div>
<div class="row">
    <div class="col-md-4 col-xs-12 pull-right" >
        <div class="box">
            <!-- <div class="box-header">
                 <h3 class="box-title">Application Buttons</h3>
             </div>-->
            <div class="box-body">
               <!-- <h3 class="box-title col-lg-3" style="display: inline;"> 学术交流 </h3>-->
                <?= Html::a(Yii::t('app', '<i class="fa fa-edit"></i> 写摘记'), ['create'], ['class' => 'btn btn-app']) ?>
                <!--<a class="btn btn-app">
                    <i class="fa fa-edit"></i> 发布
                </a>-->


            </div>
            <!-- /.box-body -->
        </div>
    </div>
    <?php foreach ( $data as $list):?>
    <div class="col-md-8 col-xs-12 pull-left">
        <div class="box box-widget border-box">
            <div class="box-header with-border">
                <div class="user-block">
                    <h4 style="margin: 0.3em 0"><a href="/mind/<?=$list['id']?>" ><?=$list['title']?></a></h4>
                </div>
                <!-- /.user-block -->
                <div class="box-tools"></div>
                <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <!-- post text -->
                <div class="row">
                    <div class="col-sm-4">
                        <img class="img-responsive" src="<?=$list['img']?>" alt="Photo">
                    </div>
                    <div class="col-sm-8">
                    <?=$list['content']?>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer  >
                <?= Html::button(Yii::t('app', '<i class="fa fa-thumbs-o-up"></i> 赞 '), ['class' => 'btn btn-default btn-xs','type'=>"button"]) ?>
                <span class="pull-right text-muted">发布时间：<?= Yii::$app->formatter->format($list['create_at'],'date')?></span>
                <?php if(Yii::$app->user->id == $list['user_id']){?>
                <a href="/mind/delete?id=1" class="pull-right text-muted"> 删除 &nbsp;</a>
                <?php } ?>

            </div>

            <!-- /.box-footer -->
        </div>
        <!-- /.box -->
    </div>
    <?php endforeach; ?>

</div>
    <?= LinkPager::widget([
        'pagination' => $pages,
    ]);?>
</div>
