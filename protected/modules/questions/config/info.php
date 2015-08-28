<?php

Yii::import('application.modules.questions.QuestionsModule');

/**
 * Module info
 */ 
return array(
	'name'=>Yii::t('QuestionsModule.core', 'Вопросы'),
	'author'=>'jam-90-87@mailo.ru',
	'version'=>'1',
	'description'=>Yii::t('QuestionsModule.core', 'Вопросы'),
	'config_url'  => Yii::app()->createUrl('/questions/admin/default/index'),
	'url'=>'', # Url to module home page.
	'widgets' => array(
		'QuestionsWidget' => array(
			'name' => 'Вопросы',
			'description' => 'Questions',
			'class' => 'application.modules.questions.widgets.QuestionsWidget',
		),
	),
);