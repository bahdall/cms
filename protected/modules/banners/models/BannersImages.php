<?php

Yii::import('application.modules.banners.models.BannersImagesTranslate');

/**
 * This is the model class for table "BannersImages".
 *
 * The followings are the available columns in table 'BannersImages':
 * @property integer $id
 * @property integer $banner_id
 * @property string $image
 * @property string $link
 * @property string $description
 * @property string $title
 * @property integer $sort
 */
class BannersImages extends BaseModel
{

	/**
	 * Translate-able
	 */
	public $title;
	public $description;
	public $link;

	public $translateModelName = 'BannersImagesTranslate';

	/**
	 * Returns the static model of the specified AR class.
	 * @return BannersImages the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'BannersImages';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		return array(
			array('description, link', 'type', 'type'=>'string'),
			array('title', 'required'),
			array('banner_id, sort', 'numerical', 'integerOnly'=>true),
			array('title, link, image', 'length', 'max'=>255),
			// The following rule is used by search().
			array('id, title, description, image, link, sort', 'safe', 'on'=>'search'),
		);
	}



	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		return array(
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'banner_id' => Yii::t('BannersModule.core', 'Баннер'),
			'title' => Yii::t('BannersModule.core', 'Заголовок'),
			'link' => Yii::t('BannersModule.core', 'Ссылка'),
			'description' => Yii::t('BannersModule.core', 'Описание'),
			'sort' => Yii::t('BannersModule.core', 'Сортировка'),
			'image' => Yii::t('BannersModule.core', 'Изображение'),
		);
	}


	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		$criteria=new CDbCriteria;

		$criteria->with = array('translate');

		$criteria->compare('id',$this->id);
		$criteria->compare('banner_id',$this->banner_id);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('translate.link',$this->link,true);
		$criteria->compare('translate.description',$this->description,true);
		$criteria->compare('sort',$this->sort,true);
		$criteria->compare('image',$this->image,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.STranslateBehavior',
				'translateAttributes'=>array(
					'title',
					'description',
					'link',
				),
			),
		);
	}

	public function beforeSave()
	{
		return parent::beforeSave();
	}

	/**
	 * Delete category pages and childs.
	 * @return boolean
	 */
	public function beforeDelete()
	{
		return parent::beforeDelete();
	}


	public function afterSave()
	{
		return parent::afterSave();
	}

	public function afterDelete()
	{
		return parent::afterSave();
	}


}