<?php

use backend\assets\AppAssetSingle;
use yii\helpers\Html;

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

    <?php $this->head(); ?>
</head>
<body class="gray-bg">
<?php $this->beginBody(); ?>
<?= $content; ?>
<?php $this->endBody(); ?>
</body>
</html>
<?php $this->endPage() ?>
