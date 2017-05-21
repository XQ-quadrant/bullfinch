<?php

namespace frontend\modules\frontend\controllers;

use yii\web\Controller;

/**
 * Default controller for the `frontend` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function view(){

    }
}
