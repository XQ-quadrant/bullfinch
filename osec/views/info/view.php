<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Document */

$this->title = $model->title;
//$this->params['breadcrumbs'][] = ['label' => 'Documents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$this->params['banner']['pic'] = $model->pic;

?>
<div class="document-view container">
<div class="row">
   <!-- <div class="col-md-3">
    </div>-->
    <div class="col-md-9">

                    <hr>
                    <?= htmlspecialchars_decode($model->content) ?>


    </div>
    <div class="col-md-3">
        <div class="box box-solid">
            <div class="box-header with-border">
                <h3 class="box-title"></h3>


            </div>
            <div  class="box-body no-padding">
                    <?=\backend\widgets\catalog\CatalogWidget::widget(['pre_cate'=>$pre_cate])?>
            </div>
            <!-- /.box-body -->
        </div>
    </div>

</div>




</div>
