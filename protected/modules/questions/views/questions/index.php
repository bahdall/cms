<?php
     Yii::import('application.modules.menu.models.Menu');
         $menu = new Menu; 
         $breadcrumbs = $menu->getMenu(3,1); 
         $item = array('label'=>Yii::t('blog','Главная'),'url'=>array('/pages/index/index'),'main'=>'main');
         array_unshift($breadcrumbs,$item);
         $this->widget('application.extensions.menu.breadcrumbs',array(
                    'items'=>$breadcrumbs
                      ));
?>

<div class="questions">
<div class=" box">

<h2><?php echo Yii::t("blog",'Задать вопрос');?></h2>

<?php if(Yii::app()->user->hasFlash('questions')): ?>

<div class="flash-success">
	<?php echo Yii::app()->user->getFlash('questions'); ?>
</div>

<?php else: ?>



<?php $form=$this->beginWidget('CActiveForm', array(
	 'id'=>'questions-form',
           'enableAjaxValidation'=>true,
           'enableClientValidation'=>true,
           'clientOptions' => array(
                'validateOnSubmit'=>true,
                'validateOnChange'=>true,
                'validateOnType'=>false,
        ),
)); ?>
    
   <?php 
            $label = $model->attributeLabels(); 
   ?>
    
    <div class="row">
      
        <?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255,"placeholder"=>$label["name"])); ?>
        <?php echo $form->error($model,'name'); ?>
    </div>

    <div class="row">
        <?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255,"placeholder"=>$label["email"])); ?>
        <?php echo $form->error($model,'email'); ?>
    </div>

    <div class="row">
        <?php echo $form->textField($model,'phone',array('size'=>20,'maxlength'=>20,"placeholder"=>"+998901234567")); ?>
        <?php echo $form->error($model,'phone'); ?>
    </div>
   
       <div class="row">
        <?php echo $form->textField($model,'address',array('size'=>255,'maxlength'=>255,"placeholder"=>$label["address"])); ?>
        <?php echo $form->error($model,'address'); ?>
    </div>
   
    
     <div class="row">
        <?php echo $form->textArea($model,'question',array('rows'=>6, 'cols'=>80,"placeholder"=>$label["question"])); ?>
        <?php echo $form->error($model,'question'); ?>
    </div>

    <div class="row buttons">
        <?php echo CHtml::submitButton(Yii::t('blog',Yii::t("blog",'Отправить')),array("class"=>"btn")); ?>
    </div>

<?php $this->endWidget(); ?>

<?php endif; ?>
</div>





    <div class="list">
        <?php $this->widget('zii.widgets.CListView', array(
            'dataProvider'=>$dataProvider,
            'template' => "{items}\n{pager}",
            'itemView'=>'_view',
        )); ?>
    </div>
</div>
