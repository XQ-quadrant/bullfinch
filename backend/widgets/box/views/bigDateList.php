<?php
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-5-19
 * Time: 上午7:11
 */
use yii\helpers\Url;
 ?>
<!-- About Me Box -->
<div class="box <?=$css['warper']?>">
 <a href="<?=$url?>" >
 <div class="box-header <?=$css['header']?>" style="">
  <i class="<?=$css['icon']?>"></i>

  <h3 class="box-title <?=$css['title']?>"><?=$title?> </h3>
  <div class="box-tools pull-right">
   <span data-toggle="tooltip"  class="badge  index-box-more" ><?= Yii::t('common','more')?></span>

  </div>
 </div></a>
 <!-- /.box-header -->
 <div class="box-body">
  <ul class="list-group list-group-unbordered">
   <?php foreach ( $ac as $m):?>
   <li class="list-group-item" style="margin-bottom: 10px">
    <span class="text-muted pull-left big-date" style="font-size: 18px; font-weight:500;color:#86cfff;;border: 1px solid #d6dce0;
    padding: 4px;">
     <?=Yii::$app->formatter->asDate($m->create_at,'M/dd')?></span>
    <a class=" " href=" <?=Url::to(['/'.$model->tableName().'/view/','id'=>$m->id])?>"
       style="display: inline;float: left;width: 85%;height: 43px;font-size: 12px;">
      <p class="attachment-text listpic-text"
           style="padding-left: 7px;  text-overflow: ellipsis;font-size: 15px;overflow: hidden;">
       <?=$m->title?></p>

     </a>

   </li>
   <?php endforeach; ?>
  </ul>

 </div>

 <!-- /.box-body -->
</div>
