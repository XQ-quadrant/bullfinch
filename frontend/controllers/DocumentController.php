<?php

namespace frontend\controllers;

use common\models\Cate;
use Yii;
use common\models\Document;
use common\models\DocumentSearch;
use yii\db\Connection;
use yii\filters\AccessControl;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DocumentController implements the CRUD actions for Document model.
 */
class DocumentController extends Controller
{
    //public $layout = 'main_nav.php';

    public function actions()
    {
        return [
            'upload'=>[
                'class' => 'common\widgets\file_upload\UploadAction',     //这里扩展地址别写错
                'config' => [
                    'imagePathFormat' => "/images/upload/{yyyy}{mm}{dd}/{time}{rand:6}",
                    "fileMaxSize"=> 51200000, /* 上传大小限制，单位B，默认50MB */
                    //'imagePathFormat' => "/images/upload/{yyyy}{mm}{dd}/{time}{rand:6}",
                ]
            ],
            'ueditor'=>[
                'class' => 'common\widgets\ueditor\UeditorAction',
                'config'=>[
                    //上传图片配置
                    'imageUrlPrefix' => "", /* 图片访问路径前缀 */
                    'imagePathFormat' => "/images/upload/{yyyy}{mm}{dd}/{time}{rand:6}", /* 上传保存路径,可以自定义保存路径和文件名格式 */
                    "imageRoot" => Yii::getAlias("@webroot"),
                    "fileMaxSize"=> 51200000, /* 上传大小限制，单位B，默认50MB */
                ]
            ]
        ];
    }


    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            /*'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['index','create','view','update','upload','ueditor','delete',],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],*/
        ];
    }
    /*public function beforeAction($action)
    {
        if (!parent::beforeAction($action)) {
            return false;
        }

        $controller = Yii::$app->controller->id;
        $action = Yii::$app->controller->action->id;
        $permissionName = $controller.'/'.$action;
        if(!\Yii::$app->user->can($permissionName) && Yii::$app->getErrorHandler()->exception === null){
            throw new \yii\web\UnauthorizedHttpException('对不起，您现在还没获此操作的权限');
        }
        return true;
    }*/

    /**
     * Lists all Document models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new DocumentSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->orderBy(['level' => SORT_DESC,'create_at'=>SORT_DESC]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionList($cate)
    {
        $this->layout = 'main_nav.php';
        $searchModel = new DocumentSearch(['cate'=>$cate]);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->orderBy(['level' => SORT_DESC,'create_at'=>SORT_DESC]);

        return $this->render('list', [
            'cate'=>$cate,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionMaxList($cate)
    {
        $this->layout = 'main_nav.php';
        $searchModel = new DocumentSearch(['cate'=>$cate]);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->orderBy(['level' => SORT_DESC,'create_at'=>SORT_DESC]);



        return $this->render('maxList', [
            'cate'=>$cate,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     * Displays a single Document model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $this->layout = 'main_nav.php';
        $model = $this->findModel($id);
        $cate =Cate::findOne(['id'=>$model->cate]);

        return $this->render('view', [
            'model' => $model,
            'cate'=>$cate,
        ]);
    }

    /**
     * Creates a new Document model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Document();
        $model->cate = Yii::$app->request->get('cate');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
/**
 * 生成栏目专属文章，将其与栏目对应上
 *
 */
    public function actionCreateInfo($cate)
    {
        $category = Cate::findOne(['id'=>$cate]);   //栏目

        if(isset($category)){
            if(Cate::TYPE_document!= $category->type){  //禁止访问
                die('forbbiden');
            }
        }else{
            die('栏目不存在');
        }

        $model = new Document();
        $model->cate = $cate;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {


            $category->uri = Url::toRoute(['frontend/info',  'id' => $model->id]);  //修改栏目url
            $category->save();

            return $this->redirect(['/cate/view', 'id' => $cate]);

        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
    /**
     * 更新栏目专属文章，
     *
     */
    public function actionUpdateInfo($cate)
    {
        $category = Cate::findOne(['id'=>$cate]);  //栏目
        if(isset($category)){
            if(Cate::TYPE_document!= $category->type){  //禁止访问
                die('forbbiden');
            }
        }else{
            die('栏目不存在');
        }

        $d = new Document();
        $model = $d->find()->where(['cate'=>$cate])->one();
        //$model = Document::findOne(['cate'=>$cate]);
        if(empty($model)){
            return $this->redirect(['create-info', 'cate' => $cate]);
        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

            $category->uri = Url::to(['frontend/info',  'id' => $model->id]); //更新cate的uri为改文章的展示页面
            $category->save();
            return $this->redirect($category->uri);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Document model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Document model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        //var_dump('');
        $this->findModel($id)->delete();

        return $this->redirect(Yii::$app->request->referrer);
    }

    public function actionStatus($id,$status){
        //$status = Yii::$app->request->get('status');

         $this->findModel($id)->changeStatus($status);
        //$this->renderAjax('')

    }

    /**
     * Finds the Document model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Document the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Document::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionTool(){
die();
        /*$temp_data = new Connection([
            'dsn' => 'mysql:host=localhost;dbname=temp_date',
            'username' => 'gb',
            'password' => 'gb',
            'charset' => 'utf8',
  ]);*/
        //$temp_data->open();
        $db = Yii::$app->db;
        $news = $db->createCommand("SELECT * FROM work1")->queryAll();

        foreach ($news as $key=>$v){
            $new = new Document();
            $new->title = $v['title'];
            $new->content = $v['content'];
            $new->author = $v['author'];
            $new->create_at = $v['p_time'];
            $new->cate = 94;

            //die();
            /*echo $new->create_at ;
            echo $new->title ;
            echo $new->cate.'<br>';*/
            if($new->insert()){
                echo $new->create_at ;
                echo $new->title ;
                echo $new->cate.'<br>';
            }else{
                echo "FAIL";
                echo $new->title.'<br>' ;
            }
            $new->refresh();

        }

        //$temp_data->close();


    }
    public function actionClear(){
        die();
        $d = Document::findAll(['cate'=>94]);
        foreach ($d as $v){
            $v->delete();
            echo $v->title;
            echo '<br>';
        }

    }
}
