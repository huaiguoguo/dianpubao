<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title                   = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>

<!--            <form method="post" action="http://www.zi-han.net/theme/hplus/index.html">-->
<!--                <h4 class="no-margins">登录：</h4>-->
<!--                <p class="m-t-md">登录到H+后台主题UI框架</p>-->
<!--                <input type="text" class="form-control uname" placeholder="用户名" />-->
<!--                <input type="password" class="form-control pword m-b" placeholder="密码" />-->
<!--                <a href="#">忘记密码了？</a>-->
<!--                <button class="btn btn-success btn-block">登录</button>-->
<!--            </form>-->

<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
<h4 class="no-margins">登录：</h4>
<p class="m-t-md">登录到H+后台主题UI框架</p>
<?= $form->field($model, 'username')->textInput(['autofocus' => true, 'class'=>'form-control uname'])->label('') ?>
<?= $form->field($model, 'password')->passwordInput(['class'=>'form-control pword m-b'])->label('') ?>
<?= $form->field($model, 'rememberMe')->checkbox() ?>
<div class="form-group">
    <?= Html::submitButton('登录', ['class' => 'btn btn-primary btn-block', 'name' => 'login-button']) ?>
</div>
<?php ActiveForm::end(); ?>





