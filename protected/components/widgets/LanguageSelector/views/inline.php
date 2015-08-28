
<div class='language-selector-inline <?php echo $cssClass; ?>'>
        <?php foreach($languages as $lang => $langModel): ?>
                <?php if($lang == Yii::app()->language): ?>

                        <span class='language-selector-active'><?php echo $langModel->name; ?></span>

                <?php else: ?>

                        <span class='language-selector-notactive'>
                                <?php echo CHtml::link(
                                        $langModel->name,
                                        $langModel->getUrl(),
                                        array('class'=>'')
                                ); ?>
                        </span>

                <?php endif ?>
        <?php endforeach ?>
</div>
