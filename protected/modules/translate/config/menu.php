<?php

Yii::import('application.modules.translate.TranslateModule');

/**
 * Admin menu for translate module.
 */
return array(
    'translate'=>array(
        'label'=>Yii::t('TranslateModule.core', 'Переводы'),
        'url'=>array('/translate/admin/default'),
        'position'=>15
    ),
);