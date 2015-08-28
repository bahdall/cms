<?php

class PollModule extends BaseModule
{
	public $moduleName = 'poll';

	public function init()
	{
		$this->setImport(array(
			'application.modules.poll.models.*',
			'application.modules.core.models.*',
			'application.modules.core.CoreModule',
		));
	}


	public function afterInstall()
	{

		$table1 = "CREATE TABLE `Poll` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`name` VARCHAR(255) NOT NULL,
						`description` VARCHAR(255) NOT NULL,
						`status` TINYINT(1) NOT NULL,
						PRIMARY KEY (`id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;
						";

		$table2 = "CREATE TABLE `PollChoice` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`poll_id` INT(11) NOT NULL,
						`votes` INT(11) NOT NULL,
						`sort` INT(2) NOT NULL,
						PRIMARY KEY (`id`),
						INDEX `poll_id` (`poll_id`),
						CONSTRAINT `pollchoice_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `Poll` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;
					";

		$table3 = "CREATE TABLE `PollChoiceTranslate` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`object_id` INT(11) NOT NULL,
						`language_id` INT(11) NOT NULL,
						`name` VARCHAR(255) NOT NULL,
						PRIMARY KEY (`id`),
						INDEX `object_id` (`object_id`),
						CONSTRAINT `pollchoicetranslate_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `PollChoice` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;

								";

		$table4 = "CREATE TABLE `PollTranslate` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`object_id` INT(11) NOT NULL,
						`language_id` INT(11) NOT NULL,
						`name` VARCHAR(255) NOT NULL,
						PRIMARY KEY (`id`),
						INDEX `object_id` (`object_id`)
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;
								";

		$table5 = "CREATE TABLE `PollVote` (
						`id` INT(11) NOT NULL AUTO_INCREMENT,
						`poll_id` INT(11) NOT NULL,
						`choice_id` INT(11) NOT NULL,
						`user_id` INT(11) NOT NULL,
						`ip_address` VARCHAR(255) NOT NULL,
						`time` DATE NOT NULL,
						PRIMARY KEY (`id`),
						INDEX `FK_PollVote_Poll` (`poll_id`),
						CONSTRAINT `FK_PollVote_Poll` FOREIGN KEY (`poll_id`) REFERENCES `Poll` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
					)
					COLLATE='utf8_general_ci'
					ENGINE=InnoDB
					AUTO_INCREMENT=1;

								";

		$connection=Yii::app()->db;
		$transaction=$connection->beginTransaction();
		try
		{
			$connection->createCommand($table1)->execute();
			$connection->createCommand($table2)->execute();
			$connection->createCommand($table3)->execute();
			$connection->createCommand($table4)->execute();
			$connection->createCommand($table5)->execute();
			//… прочие SQL-запросы
			$transaction->commit();
		}
		catch(Exception $e) // в случае возникновения ошибки при выполнении одного из запросов выбрасывается исключение
		{
			$transaction->rollback();
		}

	}
}