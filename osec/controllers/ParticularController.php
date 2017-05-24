<?php

namespace osec\controllers;

use frontend\models\search\StaffSearch;
use Yii;
use common\models\Report;
use common\models\search\ReportSearch;
use yii\data\Sort;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ReportController implements the CRUD actions for Report model.
 */
class ParticularController extends Controller
{
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
        ];
    }
    public function actions()
    {
        return [
            'upload'=>[
                'class' => 'common\widgets\icon_upload\UploadAction',     //这里扩展地址别写错
                'config' => [
                    'imagePathFormat' => "/images/upload/{yyyy}{mm}{dd}/{time}{rand:6}",
                ]
            ]
        ];
    }

    public $layout = '//main_nav.php';

    /**
     * Lists all Report models.
     * @return mixed
     */
    public function actionLeader(){
        return $this->render('leader', [
            /*'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,*/
        ]);
    }
    public function actionStaff()
    {
        /*$sort = new Sort([
            'attributes' => [
                'name' => [
                    'asc' => ['CONVERT(name USING gbk)' => SORT_ASC, 'level'=>SORT_ASC],
                    'desc' => ['CONVERT(name USING gbk)' => SORT_DESC, 'level'=>SORT_DESC],
                    'default' => SORT_ASC,
                    'label' => 'Name',
                ],
            ],
        ]);*/

        $searchModel = new StaffSearch([]);

        //$searchModel->query ->orderBy($sort->orders);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        //$dataProvider->sort = $sort;

        return $this->render('staff', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionOffice(){

        return $this->render('office', []);
    }
    public function actionCenter(){

        return $this->render('center', []);
    }
    public function actionAssistant(){

        return $this->render('assistant', []);
    }


    public function actionListAll()
    {
        $searchModel = new ReportSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('list-all', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Report model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Report model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        //var_dump(Yii::$app->user->can('发布报告'));die();
        $model = new Report();
        $model->user_id=Yii::$app->user->id;
        $model->username=Yii::$app->user->identity->username;
        $model->score= $model::SCORE_DEFAULT;
        //$model->username=Yii::$app->user->identity->username;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Report model.
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
     * Deletes an existing Report model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Report model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Report the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Report::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
