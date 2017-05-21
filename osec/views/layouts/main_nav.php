<?php
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View */
/* @var $content string */


if (Yii::$app->controller->action->id === 'login') {

    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {
    //osec\assets\AppAsset::register($this);
    //osec\assets\AdminLteAsset::register($this);
    osec\assets\IdeaAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@app/web/lte/dist');
    ?>
    <!DOCTYPE html>
    <?php $this->beginPage() ?>

    <html lang="<?= Yii::$app->language ?>">
    <head>
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
    <body class="front" >
    <?php $this->beginBody() ?>

    <div class="scrollToTop"><i class="icon-up-open-big"></i></div>

    <div class="page-wrapper">

        <?= $this->render(
            'header-top.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'header_nav.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'footer.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>
    </div>

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>
