<?php
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View */
/* @var $content string */


if (Yii::$app->controller->action->id === 'login') {
    /**
     * Do not use this code in your template. Remove it.
     * Instead, use the code  $this->layout = '//main-login'; in your controller.
     */
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {

backend\assets\AppAsset::register($this);


//dmstr\web\AdminLteAsset::register($this);
backend\assets\AdminLteAsset::register($this);

$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@app/web/adminlte/dist');
?><!DOCTYPE html>
<?php $this->beginPage() ?>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-pblue-light layout-top-nav">
<?php $this->beginBody() ?>
<div class="wrapper">
    <div class="breadcrumb_banner" style="">
        <div id="">
            <div class="container">
                <div class="row">
                    <a class="col-md-7 normal" href="<?= Yii::$app->homeUrl ?>" style="display: inline-block;">
                        <img src="/images/top.png" class="top-img"/>
                    </a>
                    <div class="col-md-5 normal">
                        <div class="row">
                            <div class="navbar-custom-menu">
                                <div class="col-md-4 pull-right">
                                    <nav class="navbar navbar-static-top site-index" role="navigation">
                                        <div class="container-self" style="padding-right: 15px;padding-left: 15px;">
                                            <ul class="nav navbar-nav">
                                                <?php if (Yii::$app->user->isGuest) {

                                                    /*echo \yii\bootstrap\Nav::widget([
                                                        'options' => ['class' => 'nav navbar-nav'],
                                                        'encodeLabels' => false,
                                                        'items' => [

                                                            ['label' => '登录', 'url' => Url::toRoute('user/security/login'), 'linkOptions' => ['target' => "_blank"]],
                                                            ['label' => '旧版网站', 'url' => 'http://10.9.10.201:8082/', 'options' => ['target' => "_blank"]],
                                                        ],
                                                    ]);*/
                                                    ?>
                                                <?php } else {

                                                    ?>
                                                    <li class="dropdown user user-menu">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                                            <span class="hidden-xs">管理</span>
                                                        </a>
                                                        <ul class="dropdown-menu">

                                                            <!-- User image -->


                                                            <li>
                                                                <div class="box box-widget ">
                                                                    <!-- Add the bg color to the header using any of the bg-* classes -->

                                                                    <div class="box-footer no-padding">
                                                                        <ul class="nav nav-stacked">
                                                                            <li><a href="/dashboard/">控制台 </a></li>
                                                                            <li><a href="#">设置 </a></li>
                                                                            <li><?= Html::a(
                                                                                    '退出',
                                                                                    ['/site/logout'],
                                                                                    ['data-method' => 'post',]
                                                                                ) ?></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <!-- Menu Body -->

                                                            <!-- Menu Footer-->

                                                        </ul>
                                                    </li>
                                                <?php } ?>

                                            </ul>
                                        </div>
                                    </nav>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 pull-right">
                                <form class="navbar-form navbar-right" role="search"
                                      style="float: right;display: inline-block;margin-right: -10px;    margin-top: 20px;">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="navbar-search-input"
                                               placeholder="<?= Yii::t('common', 'search') ?>"
                                               style="width: 151px;    height: 27px;    background-color: rgba(119, 249, 255, 0.33);color:#fff">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--<div class="row">
                            <div class="col-md-1 pull-right normal" style="padding-left: 0"></div>
                            <div class="col-md-5  pull-right normal" style="padding-right: 0">
                                <form class="navbar-form navbar-right" role="search" style="float: right;display: inline-block;margin-right: -10px;">
                                    <div class="form-group">

                                        <input type="text" class="form-control" id="navbar-search-input" placeholder="搜索" style="width: auto;    height: 27px;    background-color: rgba(119, 249, 255, 0.33);color:#fff">
                                    </div>
                                </form>
                            </div>
                        </div>-->
                        <!--<div class="row">
                            <div class="col-md-1 pull-right"></div>
                            <div class="col-md-5 pull-right">
                            <a class="btn btn-block btn-social btn-twitter">
                                 在线申请（Apply Now）
                            </a>
                            </div>
                        </div>-->

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <?= $this->render(
        'header_nav.php',
        ['directoryAsset' => $directoryAsset]
    ) ?>


    <?= $this->render(
        'content.php',
        ['content' => $content, 'directoryAsset' => $directoryAsset]
    ) ?>


</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
<?php } ?>
