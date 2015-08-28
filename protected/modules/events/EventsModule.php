<?php

class EventsModule extends BaseModule
{
	public $moduleName = 'events';

	public function init()
	{
		$this->setImport(array(
			'application.modules.events.models.*'
		));
	}


	public function afterInstall()
	{

		$table1 = "CREATE TABLE `Event` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`url` VARCHAR(50) NOT NULL,
						`event_date` DATETIME NOT NULL,
						PRIMARY KEY (`id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;

						";

		$table2 = "CREATE TABLE `EventImage` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`event_id` INT(11) NOT NULL,
						`image` VARCHAR(100) NOT NULL,
						PRIMARY KEY (`id`),
						INDEX `event_id` (`event_id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;

								";

		$table3 = "CREATE TABLE `EventTranslate` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`object_id` INT(11) NOT NULL,
						`language_id` INT(11) NOT NULL,
						`title` VARCHAR(255) NULL DEFAULT '',
						`short_description` TEXT NULL,
						`full_description` TEXT NULL,
						`meta_title` VARCHAR(255) NULL DEFAULT NULL,
						`meta_keywords` VARCHAR(255) NULL DEFAULT NULL,
						`meta_description` VARCHAR(255) NULL DEFAULT NULL,
						PRIMARY KEY (`id`),
						INDEX `object_id` (`object_id`),
						INDEX `language_id` (`language_id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=MyISAM
					AUTO_INCREMENT=1;

								";

		$table4 = "CREATE TABLE `EventVideo` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`event_id` INT(11) NOT NULL DEFAULT '0',
						`video` TEXT NOT NULL,
						`image` VARCHAR(50) NOT NULL,
						PRIMARY KEY (`id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB;";

		$connection=Yii::app()->db;
		$transaction=$connection->beginTransaction();
		try
		{
			$connection->createCommand($table1)->execute();
			$connection->createCommand($table2)->execute();
			$connection->createCommand($table3)->execute();
			$connection->createCommand($table4)->execute();
			//… прочие SQL-запросы
			$transaction->commit();
		}
		catch(Exception $e) // в случае возникновения ошибки при выполнении одного из запросов выбрасывается исключение
		{
			$transaction->rollback();
		}

	}
}