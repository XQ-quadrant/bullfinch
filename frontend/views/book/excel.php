<?php
//use yii\bootstrap\Html;
use yii\helpers\Html;
/**
 * Created by PhpStorm.
 * User: xq
 * Date: 16-9-3
 * Time: 下午3:52
 */

?>
<h2></h2>

<?= Html::csrfMetaTags() ?>
<div class="row">
<div class="col-md-12">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">批量导入</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="overlay">
                <i class="fa fa-refresh fa-spin"></i>
            </div>
            <form role="form" action="/book/excel" method="post" enctype="multipart/form-data">
                <input type="hidden" name="leadExcel" value="true">

                    <div class="form-group">
                        <label for="exampleInputFile">File input</label>
                        <input type="file" name="inputExcel">
                        <p class="help-block">Example block-level help text here.</p>
                    </div>

                    <button type="submit" class="btn btn-primary">开始导入</button>

            </form>

            <table class="table table-bordered">
                <tbody><!---->
                <tr>

                    <td class="">提示</td>
                    <td class=""><?= $feedback['msg'] ?></td>

                </tr>
                <tr>

                    <td class="text-green">成功导入</td>
                    <td class="text-green"><?= $feedback['succeed'] ?> 本</td>
                    <td>
                        <div class="progress progress-xs">
                            <?php $rate = $feedback['succeed']/(($feedback['failed']+$feedback['succeed'])==0?1:($feedback['failed']+$feedback['succeed']))
                            ?>
                            <div class="progress-bar progress-bar-yellow" style="width: <?= 1-$rate ?>%"></div>
                        </div>
                    </td>
                    <td><span class="badge bg-yellow"><?= 1-$rate ?>%</span></td>
                </tr>
                <tr>
                    <td class="text-red">失败</td>
                    <td class="text-red"><?= $feedback['failed'] ?>本</td>

                </tr>
                <tr>
                    <th>书名</th>
                    <th>错误信息</th>

                </tr>
                <?php if(isset($feedback['errors'])){ foreach($feedback['errors'] as $v){ ?>
                <tr>
                    <td><?= $v['name'] ?></td>
                    <td><?= $v['errors'] ?></td>
                    <!--<td>
                        <div class="progress progress-xs progress-striped active">
                            <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                        </div>
                    </td>
                    <td><span class="badge bg-light-blue">30%</span></td>-->
                </tr>
                <?php } }?>

                </tbody></table>
        </div>
        <!-- /.box-body -->
        <div class="box-footer clearfix">
            <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">»</a></li>
            </ul>
        </div>
    </div>

</div>
</div>