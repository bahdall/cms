<?php

	$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
		'formId'=>'translate-form',
		'deleteAction'=>$this->createUrl('/users/admin/default/delete', array('id'=>$model->id))
	));

	$title = ($model->isNewRecord) ? Yii::t('TranslateModule.core', 'Создание перевода') : Yii::t('TranslateModule.core', 'Редактирование перевода');

	$this->breadcrumbs = array(
		'Home'=>$this->createUrl('/admin'),
		Yii::t('TranslateModule.core', 'Переводы')=>$this->createUrl('index'),
		($model->isNewRecord) ? Yii::t('TranslateModule.core', 'Создание перевода') : CHtml::encode($model->message),
	);

	$this->pageHeader = $title;
?>

<div class="form wide padding-all">
	<?php $this->renderPartial('translateForm', array(
		'model' => $model,
	)); ?>
</div>

