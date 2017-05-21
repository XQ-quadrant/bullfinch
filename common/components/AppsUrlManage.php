<?php
namespace common\components;
use yii\web\UrlManager;
use Yii;
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 17-4-10
 * Time: 上午4:22
 */

class AppsUrlManage extends UrlManager {
//'language'=>'zh-CN'
    function init(){
        parent::init();
        /*$db = Yii::createObject('yii\db\Connection', [
            'dsn' => 'mysql:host=127.0.0.1;dbname=demo',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ]);*/
        //Yii::$app->language = 'zh-CN';
        //Yii::$app->id = 'en-US';
        //var_dump(Yii::$app->request->absoluteUrl);
        //var_dump(Yii::$app->request->get('route') );
        //var_dump(Yii::$app->request->getScriptUrl());die();

        //\Yii::configure('language',['language'=>'zh-CN']);
    }


}