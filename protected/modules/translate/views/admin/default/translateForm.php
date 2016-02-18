<?php echo CHtml::beginForm('','POST',array('id' => 'translate-form')); ?>


	<div class="row">
		<?php echo CHtml::activeLabelEx($model,'category') ?>
		<?php echo CHtml::activeTextField($model,'category') ?>
	</div>


	<div class="row">
		<?php echo CHtml::activeLabelEx($model,'message') ?>
		<?php echo CHtml::activeTextArea($model,'message') ?>
	</div>

	<legend>Переводы</legend>

	<?php foreach(Yii::app()->languageManager->getLanguages() as $language): ?>
	<?php $value = isset($_POST['Message']['translation'][$language->code]) ? $_POST['Message']['translation'][$language->code] : $model->loadMessage($language->code)->translation ?>
	<div class="row">
		<label><?php echo $language->name ?></label>

		<?php $this->widget('application.extensions.ckeditor.ECKEditor',array(
			'name' => 'Message[translation]['.$language->code.']',
			'value' => $value,
			'htmlOptions' => array()
		));?>
	</div>
	<?php endforeach; ?>

<?php echo CHtml::endForm(); ?>