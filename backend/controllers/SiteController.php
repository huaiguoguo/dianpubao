<?php
namespace backend\controllers;

use common\core\HoComm;
use common\extend\EController;
use common\models\BackendLoginForm;
use Yii;
use yii\taobao\Autoloader;
use yii\taobao\top\request\AlibabaAliqinFcSmsNumSendRequest;
use yii\taobao\top\TopClient;
use yii\taobao\TopSdk;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index', 'main'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['get', 'post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $this->layout = 'main';
        return $this->render('index');
    }


    public function actionLogin()
    {
        $this->layout = "login";
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new BackendLoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            HoComm::success('登陆成功');

            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionMain()
    {

        TopSdk::set();
        $taobao = new Autoloader();
        $c = new TopClient();
        $c->appkey = '12497914';
        $c->secretKey = '4b0f28396e072d67fae169684613bcd1';
        echo "<pre>";
        var_dump($c);
        exit;

        
        return $this->render('main');
    }


    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }
}
