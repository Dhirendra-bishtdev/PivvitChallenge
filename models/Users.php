<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property integer $UserID
 * @property integer $Name
 * @property integer $Email
 * @property integer $Password
 * @property integer $authKey
 * @property integer $accessToken
 * @property integer $Created
 * @property integer $Updated
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Name', 'Email', 'Password', 'authKey', 'accessToken', 'Created', 'Updated'], 'required'],
            [['Name', 'Email', 'Password', 'authKey', 'accessToken', 'Created', 'Updated'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'UserID' => 'User ID',
            'Name' => 'Name',
            'Email' => 'Email',
            'Password' => 'Password',
            'authKey' => 'Auth Key',
            'accessToken' => 'Access Token',
            'Created' => 'Created',
            'Updated' => 'Updated',
        ];
    }
}
