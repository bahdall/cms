<?php

Yii::import('application.modules.questions.QuestionsModule');

/**
 * Admin menu items for pages module
 */
return array(
	'cms'=>array(
		'position'=>6,
		'items'=>array(
			array(
				'label'=>Yii::t('QuestionsModule.core', 'Вопросы'),
				'url'=>array('/admin/questions'),
				'position'=>4
			),
		),
	),
);