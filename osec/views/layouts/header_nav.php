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
            <div class="col-md-3">

                <!-- header-left start -->
                <!-- ================ -->
                <div class="header-left clearfix">

                    <!-- logo -->
                    <div class="logo">
                        <a href="index.html"><img id="logo" src="ic/images/logo_red.png" alt="iDea"></a>
                    </div>

                    <!-- name-and-slogan -->
                    <div class="site-slogan">
                        Clean &amp; Powerful Bootstrap Theme
                    </div>

                </div>
                <!-- header-left end -->

            </div>
            <div class="col-md-9">

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
                                    ]);

                                    ?>
                                    <ul class="nav navbar-nav navbar-right">

                                        <!-- mega-menu start -->
                                        <li class="dropdown mega-menu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages</a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <div class="row">
                                                        <div class="col-lg-4 col-md-3 hidden-sm">
                                                            <h4>Premium HTML5 Template</h4>
                                                            <p>iDea is perfectly suitable for corporate, business and company webpages.</p>
                                                            <img src="ic/images/section-image-3.png" alt="iDea">
                                                        </div>
                                                        <div class="col-lg-8 col-md-9">
                                                            <h4>Pages</h4>
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <div class="divider"></div>
                                                                    <ul class="menu">
                                                                        <li><a href="page-about.html"><i class="icon-right-open"></i>About Us</a></li>
                                                                        <li><a href="page-about-2.html"><i class="icon-right-open"></i>About Us 2</a></li>
                                                                        <li><a href="page-about-3.html"><i class="icon-right-open"></i>About Us 3</a></li>
                                                                        <li><a href="page-about-me.html"><i class="icon-right-open"></i>About Me</a></li>
                                                                        <li><a href="page-team.html"><i class="icon-right-open"></i>Our Team - Options</a></li>
                                                                        <li><a href="page-services.html"><i class="icon-right-open"></i>Services</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="divider"></div>
                                                                    <ul class="menu">
                                                                        <li><a href="page-contact.html"><i class="icon-right-open"></i>Contact</a></li>
                                                                        <li><a href="page-contact-2.html"><i class="icon-right-open"></i>Contact 2</a></li>
                                                                        <li><a href="page-coming-soon.html"><i class="icon-right-open"></i>Coming Soon Page</a></li>
                                                                        <li><a href="page-404.html"><i class="icon-right-open"></i>404 error</a></li>
                                                                        <li><a href="page-faq.html"><i class="icon-right-open"></i>FAQ page</a></li>
                                                                        <li><a href="page-affix-sidebar.html"><i class="icon-right-open"></i>Sidebar - Affix Menu</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="divider"></div>
                                                                    <ul class="menu">
                                                                        <li><a href="page-left-sidebar.html"><i class="icon-right-open"></i>Left Sidebar</a></li>
                                                                        <li><a href="page-right-sidebar.html"><i class="icon-right-open"></i>Right Sidebar</a></li>
                                                                        <li><a href="page-two-sidebars.html"><i class="icon-right-open"></i>Two Sidebars</a></li>
                                                                        <li><a href="page-no-sidebar.html"><i class="icon-right-open"></i>No Sidebars</a></li>
                                                                        <li><a href="page-sitemap.html"><i class="icon-right-open"></i>Sitemap</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- mega-menu end -->
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Features</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="features-typography.html">Typography</a></li>
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pricing tables</a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="features-pricing-tables-1.html">Pricing Tables 1</a></li>
                                                        <li><a href="features-pricing-tables-2.html">Pricing Tables 2</a></li>
                                                        <li><a href="features-pricing-tables-3.html">Pricing Tables 3</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="features-backgrounds.html">Backgrounds</a></li>
                                                <li><a href="features-testimonials.html">Testimonials</a></li>
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Icons</a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="features-icons-fontawesome.html">Font Awesome Icons</a></li>
                                                        <li><a href="features-icons-fontello.html">Fontello Icons</a></li>
                                                        <li><a href="features-icons-glyphicons.html">Glyphicons Icons</a></li>
                                                    </ul>
                                                </li>
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Footer - Options</a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="features-footer-1.html#footer">Footer 1 (Default)</a></li>
                                                        <li><a href="features-footer-2.html#footer">Footer 2</a></li>
                                                        <li><a href="features-footer-3.html#footer">Footer 3</a></li>
                                                        <li><a href="features-footer-4.html#footer">Footer 4</a></li>
                                                    </ul>
                                                </li>
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Header - Options</a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="features-header-1.html">Header - Layout 1 (Default)</a></li>
                                                        <li><a href="features-header-2.html">Header - Layout 2</a></li>
                                                        <li><a href="features-header-3.html">Header - Layout 3</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="features-grid.html">Grid System</a></li>
                                            </ul>
                                        </li>
                                        <!-- mega-menu start -->
                                        <li class="dropdown mega-menu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Components</a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 col-md-6">
                                                            <h4>iDea - Powerful Bootstrap Theme</h4>
                                                            <p>iDea is a Clean and Super Flexible Bootstrap Theme with many Features and Unlimited options.</p>
                                                            <img src="ic/images/section-image-1.png" alt="image-1">
                                                        </div>
                                                        <div class="col-sm-8 col-md-6">
                                                            <h4>Components</h4>
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="divider"></div>
                                                                    <ul class="menu">
                                                                        <li><a href="components-tabs-and-pills.html"><i class="icon-right-open"></i>Tabs &amp; Pills</a></li>
                                                                        <li><a href="components-accordions.html"><i class="icon-right-open"></i>Accordions</a></li>
                                                                        <li><a href="components-social-icons.html"><i class="icon-right-open"></i>Social Icons</a></li>
                                                                        <li><a href="components-buttons.html"><i class="icon-right-open"></i>Buttons</a></li>
                                                                        <li><a href="components-forms.html"><i class="icon-right-open"></i>Forms</a></li>
                                                                        <li><a href="components-progress-bars.html"><i class="icon-right-open"></i>Progress bars</a></li>
                                                                        <li><a href="components-alerts-and-callouts.html"><i class="icon-right-open"></i>Alerts &amp; Callouts</a></li>
                                                                        <li><a href="components-content-sliders.html"><i class="icon-right-open"></i>Content Sliders</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="divider"></div>
                                                                    <ul class="menu">
                                                                        <li><a href="components-lightbox.html"><i class="icon-right-open"></i>Lightbox</a></li>
                                                                        <li><a href="components-icon-boxes.html"><i class="icon-right-open"></i>Icon Boxes</a></li>
                                                                        <li><a href="components-image-boxes.html"><i class="icon-right-open"></i>Image Boxes</a></li>
                                                                        <li><a href="components-video-and-audio.html"><i class="icon-right-open"></i>Video &amp; Audio</a></li>
                                                                        <li><a href="components-modals.html"><i class="icon-right-open"></i>Modals</a></li>
                                                                        <li><a href="components-animations.html"><i class="icon-right-open"></i>Animations</a></li>
                                                                        <li><a href="components-counters.html"><i class="icon-right-open"></i>Counters</a></li>
                                                                        <li><a href="components-tables.html"><i class="icon-right-open"></i>Tables</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- mega-menu end -->

                                    </ul>
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
