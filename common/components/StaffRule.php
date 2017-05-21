<?php
namespace common\components;
use common\models\Report;
use frontend\models\Staff;
use Yii;
use yii\rbac\Rule;
use yii\web\User;


class StaffRule extends Rule
{
    public $name = '修改教师信息';

    /**
     * @param string|integer $user 当前登录用户的uid
     * @param Item $item 所属规则rule，也就是我们后面要进行的新增规则
     * @param array $params 当前请求携带的参数.
     * @return true或false.true用户可访问 false用户不可访问
     */
    public function execute($user, $item, $params)
    {
        //Yii::$app->getUser()->
        //if(Yii::$app->user->email == )
        //return false;
if(isset($params['id'])){
    $staff = Staff::findOne(['id'=>$params['id']]);
    /*var_dump($staff->public_email);
    var_dump(Yii::$app->user->identity->email);
    die();*/
    if(Yii::$app->user->identity->email == $staff->public_email ){
        //die(Yii::$app->user->identity->email);
        return  true;
    }else{
        //die(Yii::$app->user->identity->email);
        return false;
    }
}else{
    return true;
}


        /*$id =  isset($params['id']) ? $params['id'] : null;

        if (!$id) {
            return false;
        }
        //var_dump(Yii::$app->user->can('发布信息')); die();
        $model = Report::findOne(['id'=>$id]);
        if (!$model) {
            return false;
        }

        $user_id = Yii::$app->user->id;
        //$role = Yii::$app->authManager->getRolesByUser($user_id);
        //var_dump($role);die();
        if (Yii::$app->user->can('管理报告') || $user_id == $model->user_id) {
            return true;
        }
        return false;*/
    }
}
