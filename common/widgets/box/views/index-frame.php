<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-6-17
 * Time: 上午10:13
 */
use yii\helpers\Url;

//use Yii;
?>
<div class="box <?= $css['warper'] ?>">
 <a href="<?= $url ?>" class="uppercase">
  <div class="box-header <?= $css['header'] ?>">
   <i class="<?= $css['icon'] ?>"></i>

   <h3 class="box-title <?= $css['title'] ?> text-white"><?= $title ?> </h3>
   <div class="list-news-bg"></div>
   <div class="box-tools pull-right">
    <!--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
    </button>-->
    <!--<button type="button" class="btn btn-box-tool"  title="" >
        <i class="fa fa-comments"></i>更多</button>-->
   </div>
  </div>
 </a>
 <div class="box-body <?= $css['body'] ?>">
  <?php foreach ($ac as $m): ?>
   <div class="attachment-block " style="min-height: 50px;
   border-bottom: 1px solid #ecedef;
   margin-bottom: 0px;padding: 9px 0px;">

    <div class="">

     <div class="attachment-text listpic-text" style="height: 44px;
      letter-spacing: 1px;    font-size: 14px;position: relative;">
      <a href="<?= Url::to(['/' . $model->tableName() . '/view/', 'id' => $m->id]) ?>"><?= $m->title ?></a>
      <span class="text-muted pull-right" style="font-size: 13px;
      position: absolute;
    bottom: 0px;
    right: 0px;background: #fff;
"><?=Yii::$app->formatter->asDate($m->create_at,'MM/dd')?></span>

     </div>
    </div>

   </div>
  <?php endforeach; ?>
 </div>

 <!-- /.box-body -->
</div>
