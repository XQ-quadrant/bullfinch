<?php
use yii\widgets\Breadcrumbs;
use dmstr\widgets\Alert;
use yii\helpers\Url;
use common\models\cate;

?>

<?php if (!isset($this->params['index'])) { ?>
    <section class="content-header container">
        <?php if (isset($this->blocks['content-header'])) { ?>

            <?= $this->blocks['content-header'] ?>

        <?php } else {
            if ($this->title !== null) {
                //echo \yii\helpers\Html::encode($this->title);
            } else {
                echo \yii\helpers\Inflector::camel2words(
                    \yii\helpers\Inflector::id2camel($this->context->module->id)
                );
                echo ($this->context->module->id !== \Yii::$app->id) ? '<small>Module</small>' : '';
            }
        } ?>

        <?=
        Breadcrumbs::widget(
            [
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]
        ) ?>
    </section>
<?php } ?>


<?= Alert::widget() ?>
<?= $content ?>


