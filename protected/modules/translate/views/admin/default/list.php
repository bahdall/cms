<?php
	// Display list of users

	$this->pageHeader = Yii::t('TranslateModule.core', 'Список переводов');

	$this->breadcrumbs = array(
		'Home'=>$this->createUrl('/admin'),
		Yii::t('TranslateModule.core', 'Пользователи'),
	);

	$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
		'template'=>array('new'),
		'elements'=>array(
			'new'=>array(
				'link'=>$this->createUrl('create'),
				'title'=>Yii::t('TranslateModule.core', 'Создать перевод'),
				'options'=>array(
					'icons'=>array('primary'=>'ui-icon-plus')
				)
			),
		),
	));

	$this->widget('ext.sgridview.SGridView', array(
		'dataProvider'=>$dataProvider,
		'id'=>'usersListGrid',
		'filter'=>$model,
		'columns'=>array(
			array(
				'class'=>'SGridIdColumn',
				'name'=>'id',
			),
			array(
				'name'=>'category',
				'type'=>'raw',
				'value'=>'CHtml::link(CHtml::encode($data->category),array("update","id"=>$data->id))',
			),
			array(
				'name'=>'message',
				'type'=>'raw',
				'value'=>'CHtml::link(CHtml::encode($data->message),array("update","id"=>$data->id))',
			),
			array(
				'name'=>'translation',
				'type'=>'raw',
				'value'=>'$data->getAllTranslations()',
				'filter'=>false,
			),
			array(
				'class'=>'CButtonColumn',
				'template'=>'{update}{delete}',
			),
		),
	));

