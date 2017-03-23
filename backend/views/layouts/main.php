<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;
use yii\widgets\Menu;
use common\core\HoComm;
//use common\models\AuthItem;

//$test  = HoComm::getMenuCopy(true);
//echo "<pre>";
//print_r($test);
//exit;

//AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">

    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?= Html::cssFile('@web/css/bootstrap.min.css?v=3.3.6') ?>
    <?= Html::cssFile('@web/css/font-awesome.min93e3.css?v=4.4.0') ?>
    <?= Html::cssFile('@web/css/animate.min.css') ?>
    <?= Html::cssFile('@web/css/style.min.css?v=4.1.0') ?>
    <?= Html::jsFile('@web/js/jquery.min.js') ?>
    <?php $this->head() ?>
</head>
<body class="fixed-sidebar full-height-layout gray-bg  pace-done" style="">
<?php $this->beginBody() ?>
<?= $content; ?>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
