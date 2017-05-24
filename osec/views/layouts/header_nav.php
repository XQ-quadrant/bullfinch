<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\helpers\Url;
use backend\widgets\category\CategoryWidget;

/* @var $this \yii\web\View */
/* @var $content string */

?>

<header class="header fixed clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-1">

                <!-- header-left start -->
                <!-- ================ -->
                <div class="header-left clearfix">

                    <!-- logo -->
                    <div class="logo">
                        <a href="<?= Url::home()?>"><img id="logo" src="<?= Url::to('@web/images/logo.png')?>" alt="iDea" ></a>
                    </div>

                    <!-- name-and-slogan -->
                    <!--<div class="site-slogan">
                        Clean &amp; Powerful Bootstrap Theme
                    </div>-->

                </div>
                <!-- header-left end -->

            </div>
            <div class="col-md-11">

                <!-- header-right start -->
                <!-- ================ -->
                <div class="header-right clearfix">

                    <!-- main-navigation start -->
                    <!-- ================ -->
                    <div class="main-navigation animated">

                        <!-- navbar start -->
                        <!-- ================ -->
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="container-fluid">

                                <!-- Toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="navbar-collapse-1">
                                    <?php
                                    /*if(Yii::$app->user->isGuest) {
                                        $menuItemsCenter = [
                                            ['label' => '登录', 'url' => ['/site/login']],
                                            ['label' => '注册', 'url' => ['/site/registe']],

                                        ];
                                    }else{*/

                                    $menu = new CategoryWidget(['precate_name' => 'document']);
                                    $menuItemsCenter = $menu->getCate();  //获取树状栏目
                                    //$menuItemsCenter = \mdm\admin\components\MenuHelper::getAssignedMenu(Yii::$app->user->id,$menuItemsCenter);
                                    //var_dump($menuItemsCenter);die();
                                    echo Nav::widget([
                                        'options' => ['class' => 'nav navbar-nav'],
                                        'encodeLabels' => false,
                                        'items' => $menuItemsCenter,
                                        'dropDownCaret' => '',
                                    ]);

                                    ?>

                                </div>

                            </div>
                        </nav>
                        <!-- navbar end -->

                    </div>
                    <!-- main-navigation end -->

                </div>
                <!-- header-right end -->

            </div>
        </div>
    </div>
</header>
