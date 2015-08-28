

    <div class="item_questions"> 
        
      <div class="question">
            <ul>
            <li><strong><? echo Yii::t('blog','Номер вопрос')?> : </strong><?php echo$data->id; ?></li>
            <li><strong><? echo Yii::t('blog','От')?> : </strong><?php echo$data->name; ?></li>
            <li><strong><? echo Yii::t('blog','Дата добавления')?> : </strong><?php echo date("j.m.Y",strtotime($data->created)); ?></li>
            </ul>
            <?php echo CHtml::encode($data->question); ?>
      </div>
      
      
        
      <div class="reply">
            <?php echo CHtml::encode($data->reply); ?>
      </div>
    <div style="clear: both;"></div>
        
    </div>
