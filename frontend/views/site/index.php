<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = '经济与管理研究院';//Yii::t('common', 'School of International Education');
$this->params['index'] = true;//$this->title;
$this->params['breadcrumbs'] = null;//$this->title;
$this->blocks['content-header'] = '';
//$this->registerCssFile('@web/css/pluging.css',['depends'=>['backend\assets\KodeAsset']]);

//$this->registerJsFile('@web/js/jquery.cslider.js',['depends'=>['backend\assets\KodeAsset']]);
/*$this->registerCss('.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12  .wbox{
    position: relative;
    min-height: 1px;
    padding-right: 8px;
    padding-left: 8px;

}
.normal{
position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
');*/

?>


<div class="container" style="padding-left: 0px;padding-right: 0px">
    <div id="carousel-example-generic" data-id="124gh2345" data-edit="t" class="carousel slide" data-ride="carousel" style="margin-top: 12px">
        <ol class="carousel-indicators">
            <!--<li data-target="#carousel-example-generic" data-id="1242345" data-edit="text" data-slide-to="0" class="active">
                hallow fsd
            </li>
            <li data-target="#carousel-example-generic" data-id="1242345" data-edit="text" data-slide-to="1" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>-->
        </ol>
        <div class="carousel-inner slider-items">
            <?php foreach ($pic as $k => $v) {
                if ($k == 0) {
                    ?>
                    <div class="item active">
                        <a href="<?= $v->url ?>">
                            <img src="<?= Url::to("@web" . $v->savepath) ?>" alt="<?= $v->content ?>">
                        </a>
                    </div>
                <?php } else { ?>
                    <div class="item">
                        <a href="<?= $v->url ?>">
                            <img src="<?= Url::to("@web" . $v->savepath) ?>" alt="<?= $v->content ?>">
                        </a>
                    </div>
                <?php }
            } ?>

        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="fa fa-angle-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="fa fa-angle-right"></span>
        </a>
    </div>

    <hr style="    border-top:1px solid #D9E0E6;margin-top: 20px;margin-bottom: 20px;">
    <div class="row" style="    margin-bottom: 7px;">
        <div class="col-md-8" style="">
            <?= backend\widgets\box\BoxWidget::widget([
                'type' => 'listPic_m', 'cate' => 14, 'pic' => true, 'title' => Yii::t('common', 'News'),
                'url' => Url::toRoute(['document/list', 'cate' => 14]),
                'liNum' => 4,
                'css' => ['warper' => 'box-widget index-box ', 'header' => 'with-border index-box-header', 'title' => 'index-box-title', 'icon' => 'index-box-icon bicon-news', 'body' => 'box-profile blue-border',],
            ]) ?>
        </div>
        <div class="col-md-4 wbox" style="height: 446px;">
            <?= common\widgets\box\BoxWidget::widget([
                'type' => 'index-frame', 'cate' => 32, 'title' => Yii::t('common', 'Notices'), 'liNum' => 6,
                'url' => Url::toRoute(['document/list', 'cate' => 32]),
                'css' => ['warper' => 'box-widget index-box blue-border', 'title' => 'index-box-title', 'header' => 'with-border index-box-header', 'icon' => 'index-box-icon bicon-laba', 'body' => 'box-profile',]])
            ?>

        </div>
    </div>
    <div class="row" style="margin-bottom: 23px">
        <div class="col-md-6">
            <a href="http://chfs.swufe.edu.cn/" target="_blank">
                <img style="width: 100%" src="<?=Url::to('@web/images/portfolio/广告a(1).jpg') ?>">
            </a>
        </div>
        <div class="col-md-6"><img style="width: 100%" src="<?=Url::to('@web/images/portfolio/广告b(1).jpg') ?>"></div>
    </div>
    <div class="row" style="margin-bottom: 25px;">
        <div class="col-md-8" style="    height: 506px;">
            <?php
            $achieve = new \frontend\models\Achievement();

            echo backend\widgets\box\BoxWidget::widget([
                'model' => $achieve,
                'type' => 'achievement-list', 'cate' => 67, 'title' => Yii::t('common', '科研成果'), 'liNum' => 6,
                'url' => Url::toRoute(['/achievement/list']),
                'sort' => ['id' => SORT_DESC],
                'css' => ['warper' => 'box-widget index-box blue-border', 'title' => 'index-box-title', 'header' => 'with-border index-box-header', 'icon' => 'index-box-icon bicon-bookmark', 'body' => 'box-profile',]
                ]
            );
            ?>
        </div>
        <div class="col-md-4 wbox" style="height: 506px;">
            <?= backend\widgets\box\BoxWidget::widget([
                'type' => 'listPic_m', 'cate' => 93, 'title' => Yii::t('common', '学术活动'), 'liNum' => 4,
                'url' => Url::toRoute(['document/max-list', 'cate' => 93]),
                'css' => ['warper' => 'box-widget index-box blue-border', 'title' => 'index-box-title', 'header' => 'with-border index-box-header', 'icon' => 'index-box-icon bicon-laba', 'body' => 'box-profile',]])
            ?>

        </div>
    </div>


</div>
<!-- End Presentation -->

<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->

<!-- END CONTAINER -->