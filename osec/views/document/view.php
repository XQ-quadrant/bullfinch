<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Document */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => $cate->name, 'url' => ['document/list','cate'=>$cate->id]];

$this->params['banner']['pic'] = $model->pic;
$this->params['banner']['subhead'] = '<span class="name">'
    . $model->author .'</span><span class="from">'
    . Yii::$app->formatter->asDate($model->create_at, 'yyyy - M - dd')
    .'</span>' ;
//$this->params['breadcrumbs'][] = $this->title;
function shtm($design_str)
{
    $str=$design_str; // 取得字串同时去掉头尾空格和空回车
    //$str=str_replace("<br>","",$str); // 去掉<br>标签
    //$str="<p>".$str; // 在文本头加入<p>
    $str=str_replace("\r\n","<br>",$str); // 用p标签取代换行符
    //$str.="</p>\n"; // 文本尾加入</p>
    $str=str_replace("<p></p>","",$str); // 去除空段落
    $str=str_replace("\n","",$str); // 去掉空行并连成一行
    $str=str_replace("</p>","</p>\n",$str); //整理html代码
    return $str;
}
?>
<div class="document-view container">
<div class="row">
   <!-- <div class="col-md-3">
    </div>-->
    <div class="col-md-9">

<hr>
                    <pre style="white-space: normal;     word-break: none;
     word-wrap: break-word;
     background: none;
     border: none;
     border-radius: none; ">
                        <?= shtm($model->content) ?>
                    </pre>


    </div>
    <div class="col-md-3">
        <div class="box box-default ">



            <div class="box-body ">
                <h5>相关</h5>
               <!-- <dl>
                    <dt>Donec lobortis justo at aliquet</dt>
                    <dd>Stra</dd>
                    <dt>Tempus imperdiet elit</dt>
                    <dd> sodales id. Donec lobortis justo at aliquet luctus. Praesent interdum massa sed ex efficitur, vitae dignissim ante pharetra</dd>
                </dl>-->


            </div>

        </div>
    </div>

</div>




</div>
