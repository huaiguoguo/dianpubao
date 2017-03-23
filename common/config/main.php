<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'wechat' => [
            'class' => 'callmez\wechat\sdk\Wechat',
            'appId' => 'wx74412c431a9f3880',
            'appSecret' => '8a8571be8c88342b18f16244bb8fad28',
            'token' => '744235191d8380f3dd98f64c2728a897'
        ]
    ],
];