<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Vote */

$this->title = '书籍捐赠';
$this->params['breadcrumbs'][] = ['label' => 'Votes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="vote-create" style="margin: -15px">



    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
