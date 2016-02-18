<?php
class Message extends BaseModel {

	public $message, $category;

	static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function tableName()
	{
		return Yii::app()->getMessages()->translatedMessageTable;
	}

	public function rules()
	{
		return array(
			array('id,language,translation', 'required'),
			array('id', 'numerical', 'integerOnly' => true),
			array('language', 'length', 'max' => 16),
			array('translation', 'safe'),
			array('id, language, translation, category, message', 'safe', 'on' => 'search'),
		);
	}

	public function relations()
	{
		return array(
			'source' => array(self::BELONGS_TO, 'MessageSource', 'id'),
		);
	}

	public function attributeLabels()
	{
		return array(
			'id' => Yii::t('translate', 'ID'),
			'language' => Yii::t('translate', 'Язык'),
			'translation' => Yii::t('translate', 'Перевод'),
			'category' => MessageSource::model()->getAttributeLabel('category'),
			'message' => MessageSource::model()->getAttributeLabel('message'),
		);
	}

	public function search()
	{
		$criteria = new CDbCriteria;
		$criteria->select = 't.*,source.message as message,source.category as category';
		$criteria->with = array('source');

		$criteria->compare('t.id', $this->id);
		$criteria->compare('t.language', $this->language, true);
		$criteria->compare('t.translation', $this->translation, true);
		$criteria->compare('source.category', $this->category, true);
		$criteria->compare('source.message', $this->message, true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria' => $criteria,
		));
	}

}