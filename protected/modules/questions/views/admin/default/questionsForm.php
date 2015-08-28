<?php


return array(
	'id'=>'questionUpdateForm',
	'showErrorSummary'=>true,
	'elements'=>array(
		'content'=>array(
			'type'=>'form',
			'title'=>Yii::t('QuestionsModule.core', 'Содержимое'),
			'elements'=>array(
				'question'=>array(
                    'type'=>'textarea',
                ),
                'reply'=>array(
                    'type'=>'textarea',
                ),
                'name'=>array(
					'type'=>'text',
				),
                'email'=>array(
                    'type'=>'text',
                ),
                'phone'=>array(
                    'type'=>'text',
                ),
                'lang'=>array(
                    'type'=>'text',
                ),
				'view'=>array(
					'type'=>'dropdownlist',
					'items'=>Questions::viewing()
				),
                'status'=>array(
					'type'=>'dropdownlist',
					'items'=>Questions::statuses()
				),
			),
		),
	),
);

