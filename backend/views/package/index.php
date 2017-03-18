<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\PackageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '我的书袋';
$this->params['breadcrumbs'][] = $this->title;
$model = $dataProvider->getModels();
$collectors = $collectProvider->getModels();
?>
<div class="container">
<div class="" >


    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>


    <div class="row">
        <div class="col-md-12" style="padding: 0px;">
                <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab" class="package-tab">订单</a></li>
                            <li><a href="#tab_2" class="package-tab" data-toggle="tab">收藏</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <table class="table table-bordered ">
                                    <tbody><tr>
                                        <th>书目</th>
                                        <th>状态</th>
                                    </tr>
                                    <?php foreach($model as $k => $v){ ?>
                                        <tr>
                                            <td>


                                                <a href="/book/<?= $v->book_id ?>">《<?= $v->bookname ?>》</a>
                                                <p style="color: #888;"> 订单号：<?= $v->oid ?></p>
                                                <p style="color: #888;"> <?= Yii::$app->formatter->asDate($v->deadline) ?> 到期</p>
                                            </td>
                                            <td><?= $v->statusView() ?></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody></table>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="tab_2">
                                <table class="table table-bordered ">
                                    <tbody><tr>


                                    </tr>
                                    <?php foreach($collectors as $k => $v){ ?>
                                        <tr>
                                            <td>
                                                <a href="/book/<?= $v->book_id ?>">《<?= $v->bookname ?>》</a>
                                            </td>

                                        </tr>
                                    <?php } ?>
                                    </tbody></table>
                            </div>
                            <!-- /.tab-pane -->

                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
        </div>
    </div>
</div>
</div>