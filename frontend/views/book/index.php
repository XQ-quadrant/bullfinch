<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\data\Pagination;
use yii\widgets\LinkPager;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\BookSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '书海鲸落';
$this->params['breadcrumbs'][] = $this->title;
//$count = $dataProvider->getCount();
//$totalCount = $dataProvider->getTotalCount();
//$pages = new Pagination([ 'totalCount' =>$totalCount, 'pageSize' => 18]);
$data = $dataProvider->getModels();
$this->registerCss('.row {

    margin-left:0px;
    margin-right:0px;
}');
?>
<div class="document-index">

    <div class="row container list-index" style="">
        <div class="col-lg-2 col-xs-2 book-index" >
            <div class="panel panel-default " style="
            border: none;
                border-right: 1px solid rgb(222, 222, 222);
     border-radius: 0px;
     -webkit-box-shadow: none;
     box-shadow: none;
          background-color: rgba(255, 255, 255, 0.86);
          ">

                <div class="panel-body book-index">

                    <?=\backend\widgets\catalog\CatalogWidget::widget(['pre_cate'=>18])?>

                </div>

            </div>
        </div>
        <div class="col-lg-10 col-xs-10 book-index" >
            <div class="box box-widget" style="background: rgba(255, 255, 255, 0.84);border-radius: 0px;">
                <div class="box-header with-border">
                    <form action="/book/search" method="get">
                        <div class="input-group input-group-md">
                            <input type="text" class="form-control" name="BookSearch[max]">
                            <span class="input-group-btn">
                              <button type="submit" class="btn btn-info btn-flat">搜索</button>
                            </span>
                        </div>
                    </form>


                        <div class="box-tools pull-right">
                    </div>

                </div>
                <div class="box-body box-profile">
                    <div class="row">

                    <?php foreach ( $data as $list):?>
                        <div class="col-md-2 col-xs-4 book-item">
                            <div class="book-img ">
                                <a href="<?=Url::to(['/'.$list->tableName().'/view/','id'=>$list->id])?>" target="_blank" >
                                    <img class="attachment-img" src="<?=$list->pic?>" alt="">
                                </a>
                            </div>
                            <div class="attachment-pushed book-title" >
                                <a href="<?=Url::to(['/'.$list->tableName().'/view/','id'=>$list->id])?>" target="_blank" >
                                    <?=$list->name?>
                                </a>
                                <!-- /.attachment-text -->
                            </div>
                            <!-- /.attachment-pushed -->

                        </div>
                    <?php endforeach; ?>
                    </div>
                </div>
                <div class="box-footer text-center" style="background: none;">
                    <?= LinkPager::widget([
                        'pagination' => $dataProvider->pagination,
                        'maxButtonCount'=>12
                    ]);?>
                </div>
                <!-- /.box-body -->
            </div>
        </div>


    </div>

</div>