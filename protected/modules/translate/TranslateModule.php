<?php

class TranslateModule extends BaseModule {
	public $moduleName = 'translate';
	public $preload=true;
	/**
	 * TranslateModule::init()
	 * 
	 * @return
	 */
	public function init()
	{
		$this->defaultController = 'Translate';
		$this->setImport(array(
			'translate.models.*',
			'translate.controllers.*',
			'translate.components.*',
			'translate.widgets.*'
		));


		return parent::init();
	}

	public function preload()
	{
		Yii::app()->setComponent('translate',array(
			'class' => 'translate.components.Ei18n',
			'createTranslationTables' => true,
			'connectionID' => 'db',
			'languages' => array(
				'en' => 'English',
				'ru' => 'Russian',
			)
		));

		Yii::app()->setComponent('messages', array(
			'class'                  => 'CDbMessageSource',
			'onMissingTranslation' => array('Ei18n', 'missingTranslation'),
			//			'cacheID'                => 'cache',
			//			'cachingDuration'        => 43200, // 12 hours
			'connectionID'           => 'db',
			'sourceMessageTable'     => 'TranslateSourceMessage',
			'translatedMessageTable' => 'TranslateMessage',
		));
	}

	public function beforeInstall()
	{
		$table1 = "CREATE TABLE IF NOT EXISTS `TranslateSourceMessage` (
					  `id` int(11) NOT NULL AUTO_INCREMENT,
					  `category` varchar(32) DEFAULT NULL,
					  `message` text,
					  PRIMARY KEY (`id`)
					) ENGINE=InnoDB DEFAULT CHARSET=utf8;
					";

		$table2 = "CREATE TABLE IF NOT EXISTS `TranslateMessage` (
					  `id` int(11) NOT NULL DEFAULT '0',
					  `language` varchar(16) NOT NULL DEFAULT '',
					  `translation` text,
					  PRIMARY KEY (`id`,`language`),
					  CONSTRAINT `FK_Message_SourceMessage` FOREIGN KEY (`id`) REFERENCES `TranslateSourceMessage` (`id`) ON DELETE CASCADE
					) ENGINE=InnoDB DEFAULT CHARSET=utf8;
						";

		$connection=Yii::app()->db;
		$transaction=$connection->beginTransaction();
		try
		{
			$connection->createCommand($table1)->execute();
			$connection->createCommand($table2)->execute();
			//… прочие SQL-запросы
			$transaction->commit();
		}
		catch(Exception $e) // в случае возникновения ошибки при выполнении одного из запросов выбрасывается исключение
		{
			$transaction->rollback();
		}

	}
}