


<pre>
<?php
// print_r($dataProvider);



?>
</pre>
<?php

	/** Display pages list **/
	$this->pageHeader = Yii::t('QuestionsModule.core', 'Вопросы');

	$this->breadcrumbs = array(
		'Home'=>$this->createUrl('/admin'),
		Yii::t('QuestionsModule.core', 'Вопросы'),
	);

	$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
		'template'=>array('create'),
		'elements'=>array(
			'create'=>array(
				'link'=>$this->createUrl('create'),
				'title'=>Yii::t('QuestionsModule.core', 'Создать Вопросы'),
				'options'=>array(
					'icons'=>array('primary'=>'ui-icon-plus')
				)
			),
		),
	));

	$this->widget('ext.sgridview.SGridView', array(
		'dataProvider'=>$dataProvider,
		'id'=>'pagesListGrid',
		'filter'=>$model,
		'columns'=>array(
			array(
				'class'=>'CCheckBoxColumn',
			),
			array(
				'class'=>'SGridIdColumn',
				'name'=>'id',
			),
			array(
				'name'=>'name',
				'type'=>'raw',
				'value'=>'CHtml::link(CHtml::encode($data->name), array("update", "id"=>$data->id))',
			),
            array(
				'name'=>'question',
			),
            
			array(
				'name'=>'status',
				'value'=>'CHtml::encode($data->statusLabel)',
				'filter'=>Questions::statuses()
			),
            	array(
				'name'=>'view',
				'value'=>'$data->viewLabel',
				'filter'=>Questions::viewing()
			),
			// Buttons
			array(
				'class'=>'CButtonColumn',
				'template'=>'{update}{delete}',
			),
		),
	));
