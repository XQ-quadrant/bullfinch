<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = Yii::t('common','School of International Education');
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
    <div class="row" style="margin-top: 20px">
        <div class="col-md-12" style="margin-top: 0px;border: 1px #73a6f6 solid;padding: 7px;">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                </ol>
                <div class="carousel-inner slider-items">
                    <?php foreach($pic as $k=>$v){
                        if($k==0){
                            ?>
                            <div class="item active">
                                <a href="<?= $v->url?>">
                                    <img src="<?= $v->savepath?>" alt="<?= $v->content?>">
                                </a>
                            </div>
                        <?php   }else{ ?>
                            <div class="item">
                                <a href="<?= $v->url?>">
                                    <img src="<?= $v->savepath?>" alt="<?= $v->content?>">
                                </a>
                            </div>
                        <?php }
                    }?>

                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="fa fa-angle-right"></span>
                </a>
            </div>

        </div>

    </div>

<hr style="    border-top:1px solid #D9E0E6;margin-top: 20px;margin-bottom: 20px;">
    <div class="row" style="    margin-bottom: 7px;">
        <div class="col-md-8" style="">
            <?= backend\widgets\box\BoxWidget::widget([
                'type'=>'indexBanner','cate' => 32, 'title' => Yii::t('common','新闻咨询'), 'liNum' => 7,
                'url' => Url::toRoute(['document/list', 'cate' => 32]),
                'css'=>['warper'=>'box-widget index-box blue-border','title'=>'index-box-title','header'=>'with-border index-box-header','icon'=>'index-box-icon bicon-laba','body'=>'box-profile',]
            ]) ?>
            <?= backend\widgets\box\BoxWidget::widget([
                'type'=>'listPic_m','cate' => 14, 'pic' => true, 'title' => Yii::t('common','企业动态'),
                'url' => Url::toRoute(['document/list', 'cate' => 14]),
                'liNum'=>4,
                'css'=>['warper'=>'box-widget index-box ','header'=>'with-border index-box-header','title'=>'index-box-title','icon'=>'index-box-icon bicon-news','body'=>'box-profile blue-border',],
            ]) ?>
        </div>
        <div class="col-md-4 wbox">
            <div class="box box-widget index-box blue-border">
                <a href="/index.php/document/list?cate=32">
                    <div class="box-header with-border index-box-header" style="">
                        <i class="index-box-icon bicon-laba"></i>

                        <h3 class="box-title index-box-title">专题研究 </h3>
                        <div class="box-tools pull-right">
                            <span data-toggle="tooltip" class="badge  index-box-more">更多</span>

                        </div>
                    </div></a>

                <div class="box-body">
                    <div class="head-section" style=" position: relative; margin-bottom: 10px">
                        <img src="/images/201703200951035.jpg"  style="width: 100%">
                        <div class="head-section-content" style="
                position: absolute;
                left: 0;
                bottom: 0;
                width: 100%;
                    padding: 10px;
                    color: #f9f9f9;
    background: rgba(0, 0, 0, 0.41);">
                            <h5>一带一路”国际合作重大工程项目盘点</h5>
                        </div>
                    </div>
                    <div class="head-section" style=" position: relative;">
                        <img src="/images/201703200952022.jpg"  style="width: 100%">
                        <div class="head-section-content" style="
                position: absolute;
                left: 0;
                bottom: 0;
                width: 100%;
                    padding: 10px;
                    color: #f9f9f9;
    background: rgba(0, 0, 0, 0.41);">
                            <h5>境外经贸合作区：“一带一路”双赢平台</h5>
                        </div>
                    </div>

                    <ul class="list-group list-group-unbordered"  style="margin-top: 10px;">



                            <li class="list-group-item" style="margin:9px 0">
                                <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                    国别研究报告（哈萨克斯坦）
                                </a>
                                <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                            </li>
                            <li class="list-group-item" style="margin:9px 0">
                                <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                    国别研究报告（斯里兰卡）
                                </a>
                                <span class="text-muted pull-right" style="font-size: 15px">2/4</span>
                            </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                国别研究报告（印度）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">2/1</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（伊朗）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/26</span>
                        </li><li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                国别研究报告（肯尼亚）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/8</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（南非）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（巴基斯坦）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（埃及）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（乌兹别克斯坦）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                国别研究报告（孟加拉国）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

    </div>

    <div class="row">

<?php foreach($pic_bottom as $v) { ?>
        <div class="col-sm-3">
            <div class="bottom-pic">
                <a href="<?= $v->url ?>">
                <img class="img-responsive bottom-img" src="<?= $v->savepath ?>" alt="Photo">
                </a>

            </div>
        </div>
<?php } ?>
        </div>
    <div class="row">
        <div class="col-md-12 " style="margin-top: 1.5em">
            <div class="box box-widget bottom-link-block" >
                <div class="box-header" >
                    <h3 class="box-title"><?= Yii::t('common','相关链接')?></h3>
                </div>

                <div class="box-body  index-link">
                    <div class="row ">
                        <?php for($i=0; $i<count($link_bottom); $i++){ ?>
                        <div class="col-sm-3 normal">
                            <address>
                                <a href="<?= $link_bottom[$i]->uri?>"><?= $link_bottom[$i]->name?></a><br>
                            </address>
                        </div>
                        <?php } ?>

                        <!--
                        <div class="col-sm-4 normal">

                            <address>
                                <a href="http://www.yanghua.net/">扬华素质网</a><br>
                                <a href="http://sfl.swjtu.edu.cn/">外语学院</a>
                            </address>
                        </div>

                        <div class="col-sm-4 normal">
                            <address>
                            <a href="http://civil.swjtu.edu.cn/civil/index.html">土木工程学院</a><br>
                            <a href="http://civil.swjtu.edu.cn/civil/index.html">土木工程学院</a><br>
                                </address>
                        </div>
                         -->
                    </div>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>

    </div>
</div>
<!-- End Presentation -->

<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->

<!-- END CONTAINER -->