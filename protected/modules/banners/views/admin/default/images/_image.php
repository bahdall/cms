<?
$id = $model->id;
if(!$model->id)$id = rand(1,100000)/100000;
?>

<tr class="<?=$class?>">
    <td><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></td>
    <td>
        <?php echo CHtml::textField('images['.$id.'][title]',$model->title,array('class' => 'j-title')) ?>
    </td>
    <td></td>
    <td>
        <?php echo CHtml::textArea('images['.$id.'][description]',$model->description,array(
            'class' => 'j-description',
            'rows'   => '75',
            'cols'   => '45',
        )); ?>
    </td>
    <td></td>
    <td>
        <?php echo CHtml::textField('images['.$id.'][link]',$model->link,array('class' => 'j-link')) ?>
    </td>
    <td></td>
    <td>
        <?php echo CHtml::textField('images['.$id.'][image]',$model->image,array('class' => 'j-image')) ?>
    </td>
    <td>
        <a href="#" class="deleteRow"><?php echo Yii::t('BannersModule.admin', 'Удалить') ?></a>
    </td>
</tr>