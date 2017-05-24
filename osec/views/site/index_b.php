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
?>


<div class="container" style="padding-left: 0px;padding-right: 0px">
    <div id="carousel-example-generic" data-id="124gh2345" data-edit="t" class="carousel slide" data-ride="carousel"
         style="margin-top: 12px">
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
    <div class="blog">
        <div class="col-md-6">
            <?= backend\widgets\box\BoxWidget::widget([
                'type' => 'listPic_m', 'cate' => 32, 'title' => Yii::t('common', 'Notices'), 'liNum' => 11,
                'url' => Url::toRoute(['document/list', 'cate' => 32]),
                'css' => ['warper' => 'box-widget index-box blue-border', 'title' => 'index-box-title', 'header' => 'with-border index-box-header', 'icon' => 'index-box-icon bicon-laba', 'body' => 'box-profile',]
            ])
            ?>
            <div class="blog-in">
                <a href="single.html"><img src="media/images/abt-1.jpg" alt=" "></a>
                <div class="blog-grid">
                    <h3><a href="single.html">Daniel Jackson Shoots New Yorkers for i-D</a></h3>
                    <p>Photography Daniel Jackson, styling by Alastair McKimm, hair by Shon and Esther Langham, make-up
                        by Yadim, Francelle and Hannah Murray, <span>
						casting by AM casting. Production  by Nikki Stromberg and Matthew Youmans at M.A.P New York.</span>
                    </p>
                    <a href="single.html" class="more">READ MORE</a>
                    <div class="date">
                        <span class="date-in"><i> </i>22.08.2014</span>
                        <a href="single.html" class="comments"><i></i>24</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <i class="black"> </i>
        </div>
        <div class="col-md-6 ">
            <h3 class="text-center">通知公告</h3>
            <div class="about-right">
                <h4>Lorem Ipsum printing and typesetting industry</h4>
                <p class="m_8"> explicabo. Nemo enim ipsam voluptatem quia. Donec sagittis interdum tellus sed bibendum.
                     dui. Donec ac rhoncus libero.</p>
            </div>
            <div class="about-right">
                <h4>Lorem Ipsum printing and typesetting industry</h4>
                <p class="m_8"> interdum tellus sed bibendum. Aen ean fringilla ut lacus eu vehicula Curabitur non nibh
                    </p>
            </div>
            <div class="about-right">
                <h4>Lorem Ipsum printing and typesetting industry</h4>
                <p class="m_8"> interdum tellus sed bibendum. Aen ean fringilla ut lacus eu vehicula Curabitur non nibh
                   </p>
            </div>


            <div class="row margin-bottom">
                <div class="col-md-6">
                    <img class="img-responsive" src="lte/dist/img/photo1.png" alt="Photo">
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img-responsive" src="lte/dist/img/photo2.png" alt="Photo">
                            <br>
                            <img class="img-responsive" src="lte/dist/img/photo3.jpg" alt="Photo">
                        </div>

                        <div class="col-md-6">
                            <img class="img-responsive" src="lte/dist/img/photo4.jpg" alt="Photo">
                            <br>
                            <img class="img-responsive" src="lte/dist/img/photo1.png" alt="Photo">
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <div class="col-md-6 blog-top">
            <div class="fullwidth-section semi-background">
                <div class="fullwidth-bg">
                    <div class="overlay left-aligned">
                        <div class="dt-sc-one-half column first">
                            <div class="dt-support">
                                <h2><span>dedicated</span> to dedicated</h2>
                                <p>As a dedicated customer, enjoy direct support from specialists who know our most powerful servers best. Call the exclusive support line anytime.</p>
                                <span>(855) 503-0450</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blog-in in-blog">
                <a href="single.html"><img src="images/b1.jpg" alt=" "></a>
                <div class="blog-grid">
                    <h3><a href="single.html">Amy Troost Shoots SS14 Collections for The Last Magazine</a></h3>
                    <p>Photography Daniel Jackson, styling by Alastair McKimm, hair by Shon and Esther Langham, make-up
                        by Yadim, Francelle and Hannah Murray, <span>
						casting by AM casting. Production  by Nikki Stromberg and Matthew Youmans at M.A.P New York.</span>
                    </p>
                    <a href="single.html" class="more read-more read-by">READ MORE</a>
                    <div class="date">
                        <span class="date-in"><i> </i>22.08.2014</span>
                        <a href="single.html" class="comments"><i></i>24</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <i class="black"> </i>
        </div>
        <div class="col-md-6 blog-top">
            <div class="blog-in">
                <a href="single.html"><img src="images/b5.jpg" alt=" "></a>
                <div class="blog-grid">
                    <h3><a href="single.html">Paul Wetherell Shoots Meadham Kirchhoff SS14 Collection for i-D
                            Walker.</a></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque molestie, purus id mollis
                        pharetra, lacus turpis dapibus magna, eget aliquam diam erat at velit. Suspendisse in diam sit
                        amet erat blandit efficitur at eget lorem. Aenean elementum lobortis tellus, sit amet mollis
                        tortor rhoncus id.</p>
                    <a href="single.html" class="more read-more">READ MORE</a>
                    <div class="date">
                        <span class="date-in"><i> </i>22.08.2014</span>
                        <a href="single.html" class="comments"><i></i>24</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <i class="black"> </i>
        </div>
        <div class="clearfix"></div>
        <ul class="start">
            <li><span class="prev">Prev</span></li>
            <li><span>1</span></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">6</a></li>
            <li><a href="#">7</a></li>
            <li><a href="#">8</a></li>
            <li><span>.....</span></li>
            <li><a href="#">12</a></li>
            <li><a href="#" class="next">Next</a></li>
        </ul>
    </div>
    <div class="about-main">
        <h3 class="text-center">通知公告</h3>
        <div class="about-top" style="padding: 26px 0">
            <div class="col-md-6 about-left">
                <img src="media/images/abt-1.jpg" alt="" style="
                    padding: 0 70px 0 30px;
    width: 100%;">
            </div>
            <div class="col-md-6 about-right">
                <h4>Lorem Ipsum printing and typesetting industry</h4>
                <p class="m_8"> inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                    ipsam voluptatem quia. Donec sagittis interdum tellus sed bibendum. Aen ean fringilla ut lacus eu
                    vehicula Curabitur non nibh quis nisi vestibulum aliquet non sed dolor. Ut est risus, consectetur
                    sit amet pretium in, cursus in dui. Donec ac rhoncus libero.</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="about-top" style="padding: 26px 0">
            <div class="col-md-6 about-left">
                <img src="media/images/abt-1.jpg" alt="" style="
                     padding: 0 70px 0 30px;
    width: 100%;">
            </div>
            <div class="col-md-6 about-right">
                <h4>Lorem Ipsum printing and typesetting industry</h4>
                <p class="m_8"> inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                    ipsam voluptatem quia. Donec sagittis interdum tellus sed bibendum. Aen ean fringilla ut lacus eu
                    vehicula Curabitur non nibh quis nisi vestibulum aliquet non sed dolor. Ut est risus, consectetur
                    sit amet pretium in, cursus in dui. Donec ac rhoncus libero.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="row" style="    margin-bottom: 7px;">

        <div class="col-md-12 wbox" style="height: 446px;">
            <?= backend\widgets\box\BoxWidget::widget([
                'type' => 'listPic_m', 'cate' => 32, 'title' => Yii::t('common', 'Notices'), 'liNum' => 11,
                'url' => Url::toRoute(['document/list', 'cate' => 32]),
                'css' => ['warper' => 'box-widget index-box blue-border', 'title' => 'index-box-title', 'header' => 'with-border index-box-header', 'icon' => 'index-box-icon bicon-laba', 'body' => 'box-profile',]
            ])
            ?>
        </div>
        <div class="col-md-12" style="">
            <?= backend\widgets\box\BoxWidget::widget([
                'type' => 'listPic_m', 'cate' => 14, 'pic' => true, 'title' => Yii::t('common', 'News'),
                'url' => Url::toRoute(['document/list', 'cate' => 14]),
                'liNum' => 4,
                'css' => ['warper' => 'box-widget index-box ', 'header' => 'with-border index-box-header', 'title' => 'index-box-title', 'icon' => 'index-box-icon bicon-news', 'body' => 'box-profile blue-border',],
            ]) ?>
        </div>
    </div>
    <div class="row" style="margin-bottom: 23px">
        <div class="col-md-6"><img style="width: 100%" src="<?= Url::to('@web/images/portfolio/广告a(1).jpg') ?>"></div>
        <div class="col-md-6"><img style="width: 100%" src="<?= Url::to('@web/images/portfolio/广告b(1).jpg') ?>"></div>
    </div>
    <div class="row" style="margin-bottom: 25px;">
        <div class="col-md-8" style="    height: 506px;">
            <?php
            $achieve = new \frontend\models\Achievement();

            echo backend\widgets\box\BoxWidget::widget([
                    'model' => $achieve,
                    'type' => 'achievement-list', 'cate' => 67, 'title' => Yii::t('common', '科研成果'), 'liNum' => 5,
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