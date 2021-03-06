<?php
use yii\widgets\Breadcrumbs;
use dmstr\widgets\Alert;
use yii\helpers\Url;

?>
<div class="content-wrapper ">
    <?php if(!isset($this->params['index'])){ ?>
    <section class="content-header container">
        <?php if (isset($this->blocks['content-header'])) { ?>
            <!--<h1><?= $this->blocks['content-header'] ?></h1>-->
        <?php } else { ?>
            <!--<h1>
                <?php
                if ($this->title !== null) {
                    echo \yii\helpers\Html::encode($this->title);
                } else {
                    echo \yii\helpers\Inflector::camel2words(
                        \yii\helpers\Inflector::id2camel($this->context->module->id)
                    );
                    echo ($this->context->module->id !== \Yii::$app->id) ? '<small>Module</small>' : '';
                } ?>
            </h1>-->
        <?php } ?>

        <?=
        Breadcrumbs::widget(
            [
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]
        ) ?>
    </section>
    <?php } ?>

    <section class="content ">
        <?= Alert::widget() ?>
        <?= $content ?>
    </section>

</div>
<footer id="footer" >

    <div class="footer" style="height: auto;
    background-color: rgb(95, 155, 183);">
        <div class="container">
            <div class="row " style="color:white">
                <div class="col-md-2 normal">
                    <div class="">
                        <p class="simplenav">
                             |
                            <a class="text-white" href="<?=Url::toRoute('/user/login')?>">Login</a> |
                        </p>
                    </div>
                </div>

                <div class="col-md-5 normal">
                    <div class="">
                        <address>
                            <ul>
                                <li><?= Yii::t('common','柳林校区地址:成都温江柳台大道555号通博楼')?></li>
                                <li><?= Yii::t('common','Tel')?>： （028）87092257  </li>
                                <li><?= Yii::t('common','PC')?>： 611130</li>
                            </ul>
                        </address>
                    </div>
                </div>
                <div class="col-md-5 normal">
                    <div class="">
                        <address>
                            <ul>
                                <li><?= Yii::t('common',' 光华校区地址：四川成都光华村街55号')?></li>
                                <li><?= Yii::t('common','Tel')?>： 028-87092257  </li>
                                <li><?= Yii::t('common','PC')?>： 610074</li>
                            </ul>
                        </address>

                    </div>
                </div>
                <!--<div class="col-md-4 normal">

                    <div class="social text-left">

                        <a href="#"><i class="fa fa-weibo"></i></a>

                        <a href="#"><i class="fa fa-github"></i></a>
                    </div>
                    <br>-->
                    <!--<p class="text-left">
                        Copyright 2015 西南交通大学 All rights reserved.
                    </p><p class="text-left">
                      蜀ICP备05026985号 查号台：+86-28-87600114
                    </p>
                    <p class="text-left">

                    </p><p class="text-left">
                        川公网安备 51010602000061号
                    </p>
                </div>-->
            </div>
            <br>
            <!-- /row of panels -->
        </div>
    </div>
</footer>
<!--<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>版本</b> beta 0.8
    </div>
    <strong>Copyright &copy; 2016-2017 <a href="http://.com">归锋工作室</a></strong> 技术支持
</footer>-->

<!-- Control Sidebar -->
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>