<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "purchase".
 *
 * @property integer $PurchaseID
 * @property integer $UserID
 * @property string $Title
 * @property integer $Qty
 * @property double $UnitPrice
 * @property double $TotalPrice
 * @property string $Created
 * @property string $Updated
 */
class Purchase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'purchase';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['UserID', 'Title', 'Qty', 'UnitPrice', 'TotalPrice'], 'required'],
            [['UserID', 'Qty'], 'integer'],
            [['UnitPrice', 'TotalPrice'], 'number'],
            [['Created', 'Updated'], 'safe'],
            [['Title'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PurchaseID' => 'Purchase ID',
            'UserID' => 'User ID',
            'Title' => 'Title',
            'Qty' => 'Qty',
            'UnitPrice' => 'Unit Price',
            'TotalPrice' => 'Total Price',
            'Created' => 'Created',
            'Updated' => 'Updated',
        ];
    }
}
