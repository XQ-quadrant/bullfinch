<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = Yii::t('common','一带一路国家投资信息平台');
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
        <div class="col-md-8" style="margin-top: 0px;/*border: 1px #73a6f6 solid;*/padding: 7px;">
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
            <hr>

            <div class="box box-widget index-box "><a href="/index.php/document/list?cate=14" class="uppercase">
                    <div class="box-header with-border index-box-header">
                        <i class="index-box-icon bicon-news"></i>

                        <h3 class="box-title index-box-title text-white">新闻资讯 </h3>
                        <div class="list-news-bg"></div>
                        <div class="box-tools pull-right">
                            <span data-toggle="tooltip" class="badge  index-box-more">更多</span>
                            <!--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>-->
                            <!--<button type="button" class="btn btn-box-tool"  title="" >
                                <i class="fa fa-comments"></i>更多</button>-->
                        </div>
                    </div></a>
                <div class="box-body box-profile blue-border">
                    <div class="attachment-block " style="min-height: 80px">
                        <div style="overflow: hidden;height: 68px;display: inline">
                            <img class="attachment-img" src="/images/news/图片1.png" alt="Attachment Image" style=" max-height: 68px;max-width: 95px;">
                        </div>
                        <div class="attachment-pushed">
                            <!--<h4 class="attachment-heading listpic-text" style="font-size: 15px; height: 22px;white-space: nowrap;
text-overflow: ellipsis;">
                                <a href="/index.php/document/view?id=36">中国银行：构建“一带一路”金融大动脉</a>
                            </h4>-->

                            <div class="attachment-text listpic-text" style="height: 44px;">
                                2017年3月，上海汽车工业（集团）总公司子公司MG Motor UK在阿联酋迪拜投资开设了新的培训学院，占地425平方米，包括两个汽车湾，一个培训室，一个车间和存储空间等，主要为中东客户提供服务。                            </div>
                        </div>

                    </div>
                    <div class="attachment-block " style="min-height: 80px">
                        <div style="overflow: hidden;height: 68px;display: inline">
                            <img class="attachment-img" src="/images/news/图片2.png" alt="Attachment Image" style=" max-height: 68px;max-width: 95px;">
                        </div>
                        <div class="attachment-pushed">

                            <div class="attachment-text listpic-text" style="height: 44px;">
                                2017年3月，正泰太阳能子公司Astronergy  Sola在韩国济州投资2670万美元用于建立可再生能源项目。Astronergy是一家集研究开发和生产为一体的太阳能模块生产企业，已经在济州岛建成了一个16.5兆瓦的太阳能项目，该项目占地面积68万平方米，每年可生产20476兆瓦小时的电量。                            </div>
                        </div>

                    </div>
                    <div class="attachment-block " style="min-height: 80px">
                        <div style="overflow: hidden;height: 68px;display: inline">
                            <img class="attachment-img" src="/images/news/图片4.png" alt="Attachment Image" style=" max-height: 68px;max-width: 95px;">
                        </div>
                        <div class="attachment-pushed">

                            <div class="attachment-text listpic-text" style="height: 44px;">
                                2017年3月，腾讯在英国伦敦进行了软件和IT服务的投资活动，主要涉及销售营销等方面。为了扩大欧洲市场，更好的为客户提供服务，腾讯还计划在伦敦开设一个微信信息平台办公室。
                            </div>
                        </div>

                    </div>
                    <div class="attachment-block " style="min-height: 80px">
                        <div style="overflow: hidden;height: 68px;display: inline">
                            <img class="attachment-img" src="http://ccmr.com/images/upload/20170411/1491950878688669.jpg" alt="Attachment Image" style=" max-height: 68px;max-width: 95px;">
                        </div>
                        <div class="attachment-pushed">

                            <div class="attachment-text listpic-text" style="height: 44px;">
                                截至2016年末，中国银行在“一带一路”沿线共跟进境外重大项目约420个，项目总投资额超过4000亿美元；两年来，中国银行完成对“一带一路”沿线国家各类授信支持近600亿美元。
                            </div>
                            </div>

                    </div>
                    <div class="attachment-block " style="min-height: 80px">
                        <div style="overflow: hidden;height: 68px;display: inline">
                            <img class="attachment-img" src="/images/news/图片5.png" alt="Attachment Image" style=" max-height: 68px;max-width: 95px;">
                        </div>
                        <div class="attachment-pushed">
                            <div class="attachment-text listpic-text" style="height: 44px;">
                                2017年3月，中国化工子公司Adisseo在西班牙布格尔斯投资1.07亿美元进行液体蛋氨酸的生产。同期也在法国的伊泽尔省投资1.07亿美元进行液体蛋氨酸工厂的扩建业务。此次扩建将使该公司成为欧洲最大的液体蛋氨酸生产企业。Adisseo公司是世界三大营养添加剂生产厂商之一，以专业生产蛋氨酸、维生素、酶制剂系列产品为主，是全球惟一一家可生产固体和液体蛋氨酸的企业。     </div>
                        </div>

                    </div>
                </div>

                <!-- /.box-body -->
            </div>
            <?= backend\widgets\box\BoxWidget::widget([
                'type'=>'indexBanner','cate' => 93, 'title' => Yii::t('common','当地数据'), 'liNum' => 6,
                'url' => Url::toRoute(['document/list', 'cate' => 32]),
                'css'=>['warper'=>'box-widget bg-font index-box blue-border','title'=>'index-box-title','header'=>'with-border index-box-header','icon'=>'index-box-icon bicon-laba','body'=>'box-profile',]
            ]) ?>
        </div>
        <div class="col-md-4 wbox">
            <div class="box box-widget index-box blue-border">
                <a href="/index.php/document/list?cate=32">
                    <div class="box-header with-border index-box-header" style="">
                        <i class="index-box-icon bicon-laba"></i>

                        <h3 class="box-title index-box-title">专题 </h3>
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
                                俄罗斯天然气工业公司与中海油签署合...
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">2/1</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                中建六局迪拜承建“一带一路”示范项...
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/26</span>
                        </li>
                        <!--<li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                DHL借“一带一路”东风
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/8</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                夜访中企承建的孟加拉国最大化肥厂
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>-->
                    </ul>
                </div>
            </div>
            <div class="box box-widget index-box blue-border">
                <a href="/index.php/document/list?cate=32">
                    <div class="box-header with-border index-box-header" style="">
                        <i class="index-box-icon bicon-laba"></i>

                        <h3 class="box-title index-box-title">国别研究 </h3>
                        <div class="box-tools pull-right">
                            <span data-toggle="tooltip" class="badge  index-box-more">更多</span>

                        </div>
                    </div></a>
                <!-- /.box-header -->
                <div class="box-body">
                    <ul class="list-group list-group-unbordered"  style="margin-top: 10px;">



                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b> 哈萨克斯坦</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>斯里兰卡</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">2/4</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>印度</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">2/1</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>伊朗</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/26</span>
                        </li><li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=75">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>肯尼亚</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">1/8</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>南非</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>巴基斯坦</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>埃及</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>乌兹别克斯坦</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                        <li class="list-group-item" style="margin:9px 0">
                            <a class="box-item " style="font-size: 15px" href=" /index.php/document/view?id=74">
                                <i class="fa fa-star-o"></i> 国别研究报告（<b>孟加拉国</b>）
                            </a>
                            <span class="text-muted pull-right" style="font-size: 15px">3/15</span>
                        </li>
                    </ul>

                </div>

            </div>

            <img style="width: 100%" class="img-responsive bottom-img"
                 src="/images/timg.jpg" alt="Photo">
        </div>

    </div>

<hr style="    border-top:1px solid #D9E0E6;margin-top: 20px;margin-bottom: 20px;">


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
                    <div class="row">
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