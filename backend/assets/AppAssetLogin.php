<?php
/**
 * Created by PhpStorm.
 * Author: 火柴<290559038@qq.com>
 * Date: 2016/12/25
 * Time: 18:24
 */

namespace backend\assets;

use yii\web\AssetBundle;


class AppAssetLogin extends AssetBundle
{

    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
//        'css/site.css',
        "/css/bootstrap.min.css" ,
        "/css/font-awesome.min93e3.css?v=4.4.0" ,
        "/css/animate.min.css" ,
        "/css/style.min.css" ,
        "/css/login.min.css" ,
    ];
    public $js = [
    ];

    public $depends = [
        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
    ];
}