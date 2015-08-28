<?php
//Вопросы
class QuestionsModule extends BaseModule
{
	public $moduleName = 'questions';

	public function init()
	{
		$this->setImport(array(
			'application.modules.questions.models.*',
			'application.modules.core.models.*',
			'application.modules.core.CoreModule',
		));
	}
    
    public function afterInstall()
	{

		$table1 = "CREATE TABLE IF NOT EXISTS `Questions` (
                      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                      `question` text NOT NULL,
                      `reply` text NOT NULL,
                      `status` tinyint(1) DEFAULT NULL,
                      `view` tinyint(1) DEFAULT NULL,
                      `lang` varchar(50) DEFAULT NULL,
                      `name` varchar(255) DEFAULT NULL,
                      `email` varchar(255) DEFAULT NULL,
                      `phone` varchar(20) DEFAULT NULL,
                      `address` varchar(255) DEFAULT NULL,
                      `created` datetime DEFAULT NULL,
                      PRIMARY KEY (`id`)
                    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;";

		
        $connection=Yii::app()->db;
		$transaction=$connection->beginTransaction();
		try
		{
			$connection->createCommand($table1)->execute();
			//… прочие SQL-запросы
			$transaction->commit();
		}
		catch(Exception $e) // в случае возникновения ошибки при выполнении одного из запросов выбрасывается исключение
		{
			$transaction->rollback();
		}

	}
}