<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\data\Pagination;
use yii\widgets\LinkPager;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\BookSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Books';
$this->params['breadcrumbs'][] = $this->title;
$count = $dataProvider->getCount();
$totalCount = $dataProvider->getTotalCount();
$pages = new Pagination([ 'totalCount' =>$totalCount, 'pageSize' => 15]);
$data = $dataProvider->getModels();
$this->registerCss('.row {

    margin-left:0px;
    margin-right:0px;
}');
?>
<div class="document-index">
    <div class="row container list-index" style="">
        <div class="col-lg-2 col-xs-2" >
            <div class="panel panel-default ">

                <div class="panel-body ">
                    <h5>分类</h5>

                </div>

            </div>
        </div>
        <div class="col-lg-10 col-xs-10" >
            <div class="box box-widget">
                <div class="box-header with-border">
                    <form action="/bookflow/backend/web/book/search" method="get">
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
                                <img class="attachment-img" src="<?=$list->pic?>" alt="">
                            </div>
                            <div class="attachment-pushed">
                                    <a href="<?=Url::to(['/'.$list->tableName().'/view/','id'=>$list->id])?>" class="book-title"><?=$list->name?></a>


                                <!-- /.attachment-text -->
                            </div>
                            <!-- /.attachment-pushed -->

                        </div>
                    <?php endforeach; ?>
                    </div>
                </div>
                <div class="box-footer text-center">
                    <?= LinkPager::widget([
                        'pagination' => $pages,
                    ]);?>
                </div>
                <!-- /.box-body -->
            </div>
        </div>


    </div>

</div>