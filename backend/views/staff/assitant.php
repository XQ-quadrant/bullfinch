<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\StaffSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '行政人员';
$this->params['breadcrumbs'][] = $this->title;
/*$a = Yii::$app->request->get('category');
$category = isset($a)?$a:39;*/
$positions = [];

foreach ($positions as $position) {
    $dataProvider = $searchModel->search(['position' => $position]);
    $models = $dataProvider->getModels();
    foreach ($models as $model) {

    }
}
?>

<div class="container assistant">
    <div class=" text-center">
        <h2 class="heading"><?= $this->title ?> <span class="divider-center"></span></h2>
    </div>

    <div class="row leader-block">
        <?php foreach ($dataProvider->models as $assistant){
            ?>
            <div class="col-md-3  col-sm-3 assistant-block">
                <div class="box box-solid ">
                    <div class="box-body with-border">
                        <a href="<?= Url::to(['/staff/view','id'=>$assistant->id]) ?>">
                        <img class=" user-img " src=<?= $assistant->icon?:'/images/icon/icon_staff.png' ?>>
                        <div class="assistant-info">
                            <h4 class=" "><?= $assistant->name ?></h4>
                            <h6 class=" "><?= @$assistant->title ?></h6>
                        </div></a>
                    </div>
                </div>
            </div>
            <?php
}?>



    </div>

</div>

