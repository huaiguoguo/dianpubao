<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%sysconfig}}".
 *
 * @property integer $id
 * @property string $email
 * @property string $auth_code
 * @property string $host
 * @property integer $port
 * @property integer $status
 * @property string $appellation
 * @property string $encryption
 */
class Sysconfig extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%sysconfig}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['port', 'status'], 'integer'],
            [['email'], 'string', 'max' => 60],
            [['auth_code', 'host', 'appellation'], 'string', 'max' => 20],
            [['encryption'], 'string', 'max' => 5],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'email' => '邮箱',
            'auth_code' => '授权码或密码',
            'host' => '主机',
            'port' => '端口',
            'status' => '状态',
            'appellation' => '称谓',
            'encryption' => '加密方式',
        ];
    }
}
