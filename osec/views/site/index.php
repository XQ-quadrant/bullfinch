<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = '经济与管理研究院';//Yii::t('common', 'School of International Education');
$this->params['index'] = true;//$this->title;
$this->params['breadcrumbs'] = null;//$this->title;
$this->blocks['content-header'] = '';
$this->registerCssFile('@web/plugins/flexslider/flexslider.css',[]);

$this->registerJsFile('@web/plugins/flexslider/jquery.flexslider-min.js',['depends'=>[\yii\web\JqueryAsset::className()]]);
$js = <<<JS
$(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });

JS;
$this->registerJs($js);
?>
<div id="container" class="cf">

    <div id="main" role="main">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <img src=<?=Url::to("@web/plugins/flexslider/images/kitchen_adventurer_cheesecake_brownie.jpg")?> />
                    </li>
                    <li>
                        <img src=<?=Url::to("@web/plugins/flexslider/images/kitchen_adventurer_lemon.jpg")?> />

                    </li>
                    <li>
                        <img src=<?=Url::to("@web/plugins/flexslider/images/kitchen_adventurer_donut.jpg")?> />
                    </li>
                    <li>
                        <img src=<?=Url::to("@web/plugins/flexslider/images/kitchen_adventurer_caramel.jpg")?> />
                    </li>
                </ul>
            </div>
        </section>
    </div>

</div>

<div class="page-top">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="call-to-action">
                    <h1 class="title">iDea Clean and Unique Design</h1>
                    <p>Sed ut Perspiciatis Unde Omnis Iste Sed ut perspiciatis unde omnis iste natu error sit  voluptatem accusan tium </p>
                    <a class="btn btn-white more" data-toggle="modal" data-target="#myModal">
                        Read more <i class="pl-10 fa fa-info"></i>
                    </a>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title" id="myModalLabel">iDea Clean and Unique Design</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Consectetur adipisicing elit. Nemo architecto debitis dolorum ullam in ut sint, odit maiores eaque explicabo, repellendus minima soluta sunt! Nisi minima blanditiis voluptate, ut atque.</p>
                                    <ul class="list-icons">
                                        <li><i class="icon-check"></i> Nisi minima blanditiis voluptate</li>
                                        <li><i class="icon-check"></i> Officiis nisi nam doloribus explicabo</li>
                                        <li><i class="icon-check"></i> Debitis delectus corporis aspernatur</li>
                                        <li><i class="icon-check"></i> Dolore temporibus odio distinctio</li>
                                        <li><i class="icon-check"></i> Reprehenderit optio unde accusantium quia</li>
                                    </ul>
                                    <p>Culpa expedita! Quisquam, itaque officiis nisi nam doloribus explicabo possimus, dolorum alias provident maxime temporibus, enim voluptatibus! Molestias, accusantium cum impedit sint velit exercitationem deserunt, corporis magni provident earum, ullam iusto voluptatem iste animi inventore ab cupiditate quod laborum quasi libero doloremque obcaecati eius. Ut, reprehenderit optio unde accusantium quia qui! Debitis delectus corporis aspernatur nemo aut, odio harum ea repellendus quidem, saepe, incidunt? Assumenda deserunt unde minima aspernatur ducimus velit molestiae, minus eius inventore, dolore temporibus odio distinctio optio.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><i class="icon-check"></i> Ok</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    or
                    <a href="page-contact.html" class="btn btn-default contact">Contact us <i class="pl-10 fa fa-phone"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page-top end -->

<!-- section start -->
<!-- ================ -->
<div class="section clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">About Us</h1>
                <div class="separator"></div>
                <p class="lead text-center">Lorem ipsum dolor sit amet laudantium molestias similique.<br> Quisquam incidunt ut laboriosam.</p>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="title">iDea - Responsive Website Theme</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <img src="images/section-image-2.png" alt="">
                            </div>
                            <div class="col-md-6">
                                <p>Quo soluta provident, quod reiciendis. Dolores nam totam aut illum ex ratione harum molestias maxime minima tempore, possimus, laudantium. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            </div>
                        </div>
                        <p>Esse sequi veniam, assumenda voluptate necessitatibus ipsa dicta vero, minima natus cum cupiditate magnam et placeat quo adipisci.</p>
                        <a href="page-about.html" class="btn btn-white">Learn More</a>
                        <div class="space hidden-md hidden-lg"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel-group panel-dark" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <i class="fa fa-bold"></i>Bootstrap Based
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                                            <i class="fa fa-leaf"></i>Clean &amp; powerful code
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
                                            <i class="fa fa-html5"></i>HTML5/CSS3
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
</div>
<!-- section end -->

<!-- section start -->
<!-- ================ -->
<div class="section parallax light-translucent-bg parallax-bg-3">
    <div class="container">
        <div class="call-to-action">
            <div class="row">
                <div class="col-md-8">
                    <h1 class="title text-center">Clean &amp; Powerful Bootstrap Theme</h1>
                    <p class="text-center">Sed ut Perspiciatis Unde Omnis Iste Sed ut sit  voluptatem accusan tium </p>
                </div>
                <div class="col-md-4">
                    <div class="text-center">
                        <a href="#" class="btn btn-default btn-lg">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- section end -->

