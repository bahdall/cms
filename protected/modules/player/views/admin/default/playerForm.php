<?php


return array(
	'id'=>'pageUpdateForm',
	'showErrorSummary'=>true,
	'elements'=>array(
		'content'=>array(
			'type'=>'form',
			'title'=>Yii::t('PlayerModule.core', 'Содержимое'),
			'elements'=>array(
				'name'=>array(
					'type'=>'text',
				),
                'description'=>array(
					'type'=>'textarea',
				),
			),
		),
	),
);

