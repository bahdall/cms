<?php
	// Page create/edit view

	$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
		'form'=>$form,
		'langSwitcher'=>!$model->isNewRecord,
		'deleteAction'=>$this->createUrl('/questions/admin/default/delete', array('id'=>$model->id))
	));

	$title = ($model->isNewRecord) ? Yii::t('QuestionsModule.core', 'Создание Вопрос'):
		Yii::t('QuestionsModule.core', 'Редактирование Вопросы');

	$this->breadcrumbs = array(
		'Home'=>$this->createUrl('/admin'),
		Yii::t('QuestionsModule.core', 'Вопросы')=>$this->createUrl('index'),
		($model->isNewRecord) ? Yii::t('QuestionsModule.core', 'Создание Вопрос'): CHtml::encode($model->name),
	);



	$this->pageHeader = $title;
?>

<!-- Use padding-all class with SidebarAdminTabs -->
<div class="form wide padding-all">
	<?php echo $form->asTabs(); ?>
</div>

