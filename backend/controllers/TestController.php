<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/20
 * Time: 16:00
 */

namespace backend\controllers;


use yii\web\Controller;

use yii;

class TestController extends Controller
{

    public function dump($param)
    {
        if ($param) {
            echo "<pre>";
            print_r($param);
            echo "</pre>";
        }
    }



    public function actionIndex()
    {

        $wechat = Yii::$app->wechat;

        $this->dump($wechat->accessToken);

        exit;
        $appid = Yii::$app->wechat->appId;
        $redirect_uri = '';
        $scope = 'snsapi_base';
        $state = 'test';
        //$scope='snsapi_userinfo';//需要授权
        $url = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' . $appid . '&redirect_uri=' . urlencode($redirect_uri) . '&response_type=code&scope=' . $scope . '&state=' . $state . '#wechat_redirect';
        header("Location:" . $url);
        exit;
    }


    public function actionAccesstoken()
    {
        $code = $_GET["code"];
        $state = $_GET["state"];

        if ($state != 'test') {
            die('非法请求');
        }


        $appid = Yii::$app->wechat->appId;
        $appsecret = Yii::$app->wechat->appsecret;
        $request_url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid=' . $appid . '&secret=' . $appsecret . '&code=' . $code . '&grant_type=authorization_code';

        //初始化一个curl会话
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $request_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result, true);

        //获取token和openid成功，数据解析
        $access_token = $result['access_token'];
        $refresh_token = $result['refresh_token'];
        $openid = $result['openid'];


        $this->dump($openid);


        exit;

        //请求微信接口，获取用户信息
        $userInfo = $this->getUserInfo($access_token, $openid);
        //前端网页的重定向
        if ($openid) {
            return $this->redirect($state . $openid);
        } else {
            return $this->redirect($state);
        }
    }

    public function getUserInfo($access_token, $openid)
    {
        $request_url = 'https://api.weixin.qq.com/sns/userinfo?access_token=' . $access_token . '&openid=' . $openid . '&lang=zh_CN';
        //初始化一个curl会话
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $request_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        return json_decode($result, true);
    }


}