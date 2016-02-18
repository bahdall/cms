<?php

Yii::import('application.modules.translate.TranslateModule');

/**
 * Module info
 */ 
return array(
	'name'=>Yii::t('TranslateModule.core', 'Переводы'),
	'author'=>'tsharipov777@gmail.com',
	'version'=>'0.1',
	'description'=>Yii::t('TranslateModule.core', 'Управление переводами сайта.'),
	'config_url'=> Yii::app()->createUrl('/translate/admin/default/info'), # Url to module home page.
);