<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\StaffSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '学院领导';
$this->params['breadcrumbs'][] = $this->title;
/*$a = Yii::$app->request->get('category');
$category = isset($a)?$a:39;*/
$positions = [];

foreach ($positions as $position){
    $dataProvider= $searchModel->search(['position'=>$position]);
    $models = $dataProvider->getModels();
    foreach ($models as $model){

    }
}
?>

<div class="container">
    <div class=" text-center" >
        <h2 class="heading">学院领导 <span class="divider-center"></span></h2>
    </div>
    <div class="row leader-block" style="padding: 20px">

        <div class="col-md-5 col-md-offset-4 col-sm-3 ">

            <div class="box box-solid">
                <div class="box-footer with-border" >
                    <div class="col-sm-6"><img class="img-responsive " src="/images/staff/t1.jpg" alt="Photo"></div>
                    <div class="col-sm-6">
                        <h4 class="leader-username " >院长-甘犁</h4>
                        <h5 class="leader-info ">柳林校区格致楼12楼1202室</h5>
                        <p class="leader-info">gucoyu@cc.com</p>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="row leader-block" style="padding: 20px">
        <div class="col-md-5 col-md-offset-1 col-sm-3 fgrids">

            <div class="box box-solid">
                <div class="box-footer with-border" >
                    <div class="col-sm-6"><img class="img-responsive " src="/images/staff/t1.jpg" alt="Photo"></div>
                    <div class="col-sm-6" >
                        <h4 class="leader-username " >党总支书记-董艳</h4>
                        <h5 class="leader-info ">柳林校区格致楼12楼1210B室</h5>
                        <p class="leader-info">gucoyu@cc.com</p>
                    </div>
                </div>
            </div>


        </div>
        <div class="col-md-5  col-sm-3 fgrids">
            <div class="box box-solid">
                <div class="box-footer with-border" >
                    <div class="col-sm-6"><img class="img-responsive " src="/images/staff/t1.jpg" alt="Photo"></div>
                    <div class="col-sm-6" >
                        <h4 class="leader-username " >常务副院长-李涵
                            </h4>
                        <h5 class="leader-info ">柳林校区格致楼12楼1209室</h5>
                        <p class="leader-info">gucoyu@cc.com</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5 col-md-offset-1 col-sm-3 fgrids">

            <div class="box box-solid">
                <div class="box-footer with-border" >
                    <div class="col-sm-6"><img class="img-responsive " src="/images/staff/t1.jpg" alt="Photo"></div>
                    <div class="col-sm-6" >
                        <h4 class="leader-username " >党总支副书记-周高蓉</h4>
                        <h5 class="leader-info ">柳林校区格致楼12楼1203A</h5>
                        <p class="leader-info">gucoyu@cc.com</p>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>

