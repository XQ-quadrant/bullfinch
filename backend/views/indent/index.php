<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\models\Indent;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\IndentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '总订单';
$this->params['breadcrumbs'][] = $this->title;

$this->registerJs('
$(".gridview").on("click", function () {
//注意这里的$("#grid")，要跟我们第一步设定的options id一致
    var keys = $("#grid").yiiGridView("getSelectedRows");
    console.log(keys);
});
');
?>

<div class="indent-index">

    <h3><?= Html::encode($this->title) ?></h3>
    <?php  //echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= Html::a("派发", "javascript:void(0);", ["class" => "btn btn-success gridview"]) ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        "options" => [
            // ...其他设置项
            "id" => "grid"
        ],
        'columns' => [

            [
                "class" => 'yii\grid\CheckboxColumn',
                "name" => "id",
                "cssClass" =>"icheckbox_flat-blue",

            ],
            ['class' => 'yii\grid\SerialColumn'],

            [
                'class' => common\models\grid\IndentColumn::className(),
                //"value" => ['address','user->profile->name',],
                /* "label" => "归还时间",
                 'attribute' => 'deadline',
                 "format" => "date",
                 "value" =>'deadline',*/
            ],
            'address',
            'ext',
            'create_at:date',
             [
                 //'class' => \yii\grid\DataColumn::className(),
                 "label" => "归还时间",
                 'attribute' => 'deadline',
                 "format" => "date",
                 "value" =>'deadline',
             ],

            [
                "label" => "状态",
                "format" => "raw",
                //'attribute' => 'status',
                "value" => function ($model) {
                    return $model->statusView();

                }
            ],
            [
                    "label" => "操作",
                    "format" => "raw",

                    "value" => function ($model) {
                        switch($model->status){
                            case Indent::STATUS_underDeal : $status= '未处理';$label = 'btn-danger';break;
                            case Indent::STATUS_payed: $status= '派送';$label = 'btn-warning';break;
                            case Indent::STATUS_delivery: $status= '确认收货';$label = 'btn-warning';break;
                            case Indent::STATUS_dealed: $status= '确认归还';$label = 'btn-info';break;
                            case Indent::STATUS_expire: $status= '确认归还';$label = 'btn-info';break;
                            case Indent::STATUS_return: $status= '归还';$label = 'btn-warning';break;
                        }
                        return '<a href="/indent/deal?id='.$model->id.'" class="btn btn-xs '.$label.' .btn-flat">'.$status.'</span>';
                        //return $model->status;
                    }
            ]

            ,
            // 'school',
            // 'house',
            // 'room',
            // 'money',
            // 'sender_id',

            ['class' => 'yii\grid\ActionColumn',
                'template' => '{view} {delete}',

          'buttons'=>['ccc' => function ($url, $model, $key) {
                            return $model->status === 'editable' ? Html::a('Update', $url) : '';
                        }],

            ],
        ],
    ]); ?>
</div>
