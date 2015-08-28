<?php

class Questions extends BaseModel
{
   
   
     
	/**
	 * Returns the static model of the specified AR class.
	 * @return Banner the static model class
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
		return 'Questions';
	}
   
   /**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		return array(
			array('question, name, email, phone ,address', 'required', 'on'=>'quest'),
            array('question, name, email, phone ,address', 'required', 'on'=>'quest'),
            array('question, reply, created, status, view, lang, name, email, phone','safe'),
            array('name , address', 'length', 'max'=>255),
            array('lang', 'length', 'max'=>50),
            array('email', 'length', 'max'=>255),
            array('email', 'email', 'on'=>'quest'),
            array('phone', 'match', 'pattern' => '/^\+\d{12}$/','on'=>'quest'),
            // The following rule is used by search().
			array('id, name, status', 'safe', 'on'=>'search'),
		);
	}
 

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		return array(
		);
	}
    
    	/**
	 * @return array
	 
	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.STranslateBehavior',
				'translateAttributes'=>array(
					//'name'
				),
			),
		);
	}
*/
	public function scopes()
	{
		return array(
			'active' => array(
				'condition' => 'status !=0'
			),
		); 
	}


	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => Yii::t('blog', 'Ф.И.О'),
			'status' => Yii::t('blog', 'Статус'),
            'question' => Yii::t('blog', 'Вопросы'),
            'reply' => Yii::t('blog', 'Ответ'),
            'view' => Yii::t('blog', 'Просмотр'),
            'lang' => Yii::t('blog', 'Язык'),
            'email' => Yii::t('bloge', 'E-mail'),
            'phone' => Yii::t('blog', 'Телефон'),
            'address' => Yii::t('blog', 'Адрес'),
            'created' => Yii::t('blog', 'Дата добавления'),
            
            
        );
	}

	/**
	 * @return array
	 */
	public static function statuses()
	{
		return array(
			'0'=>Yii::t('QuestionsModule.core', 'Не активен'),
			'1'=>Yii::t('QuestionsModule.core', 'Активен'),
		);
	}
    
     /**
     * @return array
     */
	public static function viewing()
	{
		return array(
			'0'=>Yii::t('QuestionsModule.core', 'Не просмотрение'),
			'1'=>Yii::t('QuestionsModule.core', 'просмотрение'),
		);
	}

	/**
	 * @return mixed
	 */
	public function getStatusLabel()
	{
		$statuses = $this->statuses();
		return $statuses[$this->status];
	}
    
   /**
    * @return mixed
    */
	public function getViewLabel()
	{
        $viewing = $this->viewing();
		return $viewing[$this->view];
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions. Used in admin search.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		$criteria=new CDbCriteria;
        
  	   // $criteria->with = array('translate');
		
        $criteria->compare('t.id',$this->id);
		
		$criteria->compare('t.name',$this->name);
        $criteria->compare('t.status',$this->status);
        $criteria->compare('t.view',$this->view);
       
   
        // Create sorting by translation title
			$sort=new CSort;
		$sort->attributes=array(
			'*',
			'name' => array(
				'asc'   => 'name',
				'desc'  => 'name DESC',
			)
		);
	
    	return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
            'sort'=>$sort,
			'pagination'=>array(
				'pageSize'=>20,
			)
		));
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
        if($this->isNewRecord)
        {
          $this->created = date("",time());
        }
        
		return parent::beforeSave();
	}

}
