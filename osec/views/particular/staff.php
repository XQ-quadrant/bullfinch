<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;
//use Collator;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\StaffSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '教学研究人员';
$this->params['breadcrumbs'][] = $this->title;
/*$a = Yii::$app->request->get('category');
$category = isset($a)?$a:39;*/
$positions = [];

/*foreach ($positions as $position){
    $dataProvider= $searchModel->search(['position'=>$position]);
    $models = $dataProvider->getModels();
    foreach ($models as $model){

    }
}*/

/*$sort = new yii\data\Sort([
    'attributes' => [
        'title' => [
            'asc' => ['title' => SORT_ASC],
            'desc' => ['title' => SORT_DESC],
            'default' => ['title' => SORT_DESC],
            //'label' => Inflector::camel2words('age'),
        ]
    ],
]);*/
/*$dataProvider->setSort([
    'defaultOrder' => [
        //'created_at' => SORT_DESC,
        //'title' => SORT_DESC,
        //'name' =>  ['CONVERT(name USING gbk) COLLATE gbk_chinese_ci ASC' => SORT_DESC],
        'name' => [
            //'asc'  => ['CONVERT(name USING gbk)' => SORT_ASC],
            'asc' => ['CONVERT(name USING gbk) COLLATE gbk_chinese_ci ASC' => SORT_ASC],
        ],
    ]
]);
$dataProvider->sortByPinyin($dataProvider, [
'name',
]);*/
//$dataProvider->setTotalCount(100);
//$dataProvider->setSort(['defaultOrder' =>$sort->orders]);

/*$sortName = new Collator('zh-CN');
//$sortName->
foreach ((new Collator('zh-CN'))->asort($models) as $v){
echo $v->name;
}
die();*/
$dataProvider->setPagination([
    'defaultPageSize' => 20,
    //'totalCount'=>$dataProvider->getTotalCount(),
    //'pageSizeLimit'=>$dataProvider->getTotalCount()
]);
$count = $dataProvider->count;
$pages = new \yii\data\Pagination([ 'totalCount' =>$dataProvider->getTotalCount(), 'pageSize' => 20]);
/*$sort = new \yii\data\Sort([
            'attributes' => [
                //'title',
                'name' => [
                    'asc' => ['title'=> SORT_ASC,'CONVERT(name USING gbk)' => SORT_ASC, 'level'=>SORT_ASC],
                    'desc' => ['title'=> SORT_DESC,'CONVERT(name USING gbk)' => SORT_DESC, 'level'=>SORT_DESC],
                    'default' => SORT_ASC,
                    'label' => 'Name',
                ],
            ],
        ]);
$dataProvider->sort = $sort;*/
//$dataProvider->filterModel = $searchModel;
$models = $dataProvider->getModels();
//var_dump($dataProvider->getSort());die();
?>
<div class="container">
    <div class=" text-center">
        <h2 class="heading"><?= $this->title ?> <span class="divider-center"></span></h2>
    </div>
    <div class="row leader-block" style="padding: 20px">
        <div class="col-md-3">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body no-padding">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active">
                            <a href="#"><i class="fa fa-filter"></i> 总 共 <span
                                    class="label label-warning pull-right"><?= $dataProvider->getTotalCount() ?></span></a>
                        </li>
                        <li class=""><a href="#"><i class="fa fa-inbox"></i> 全 职
                                <!--<span class="label label-primary pull-right">12</span>--></a>
                        </li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> 兼 职</a></li>
                        <li><a href="#"><i class="fa fa-file-text-o"></i> 客 座</a></li>


                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-9">

            <div class="row">
                <div class="col-md-5 col-sm-3 ">
                    <ul class="menu">
                        <?php for ($i = 0; $i < $count; $i += 2) { ?>
                            <li class="staff">
                                <a href="<?= \yii\helpers\Url::to(['/staff/view', 'id' => $models[$i]->id]) ?>">
                                    <!--<div class="pull-left">
                                        <img src="/adminlte/dist/img/user3-128x128.jpg" class="img-circle user-icon" alt="User Image">
                                    </div>-->
                                    <h4>
                                        <?= $models[$i]->name ?>
                                        <small><?= $models[$i]->title ?></small>
                                    </h4>
                                    <p><?= $models[$i]->public_email ?></p>
                                </a>
                            </li>
                            <?php
                        } ?>
                    </ul>
                </div>
                <div class="col-md-5 col-sm-3 ">
                    <ul class="menu">
                        <?php for ($i = 1; $i < $count; $i += 2) {
                            ?>
                            <li class="staff">
                                <a href="<?= \yii\helpers\Url::to(['/staff/view', 'id' => $models[$i]->id]) ?>">
                                    <!--<div class="pull-left">
                                        <img src="/adminlte/dist/img/user3-128x128.jpg" class="img-circle user-icon" alt="User Image">
                                    </div>-->
                                    <h4>
                                        <?= $models[$i]->name ?>
                                        <small><?= $models[$i]->title ?></small>
                                    </h4>
                                    <p><?= $models[$i]->public_email ?></p>
                                </a>
                            </li>
                            <?php
                        } ?>

                    </ul>
                </div>
            </div>
            <?= LinkPager::widget([
                'pagination' => $pages,
            ]); ?>
        </div>
    </div>
</div>