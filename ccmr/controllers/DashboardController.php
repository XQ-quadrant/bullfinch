<?php

namespace ccmr\controllers;

class DashboardController extends \yii\web\Controller
{
    public $layout = 'main.php';

    public function actionIndex()
    {
        return $this->render('index');
    }

}
