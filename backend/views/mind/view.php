<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Mind */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Minds', 'url' => ['list-all']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mind-view">

    <div class="col-md-8 pull-left">
        <div class="box box-widget border-box">
            <div class="box-body">
                <h4 class="title"> <?=$model['title']?></h4>
                <div class="author clearfix author-right">
                    <!--<img src="img/profileimg4.png" alt="img">-->
                    <span class="name" style="margin-right: 1em;"><?=$model['username']?> </span>
                    <span class="from"><?= Yii::$app->formatter->format($model['create_at'],['datetime','php: Y年m月d日 '])?></span>
                </div>
                <hr>
                <div>
                    <?=$model['content']?>
                </div>

                <?= Html::button(Yii::t('app', '<i class="fa fa-thumbs-o-up"></i> 赞 '), ['class' => 'btn btn-default btn-xs','type'=>"button"]) ?>

            </div>

            <!-- /.box-header -->

            <!-- /.box-body -->

            <!-- /.box-footer -->

            <!-- /.box-footer -->
        </div>
        <!-- /.box -->
    </div>


</div>
