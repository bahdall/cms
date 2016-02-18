<?php


$title = Yii::t('TranslateModule.core', 'Информация о модуле');

$this->breadcrumbs = array(
    'Home'=>$this->createUrl('/admin'),
    Yii::t('TranslateModule.core', 'Переводы')=>$this->createUrl('index'),
    Yii::t('TranslateModule.core', 'Информация о модуле'),
);

$this->pageHeader = $title;
?>

<div style="margin: 20px">
    <h3>Displaying the editor&nbsp;</h3>
    Once the module and the translation component have been set. You just use any of the following helper functions:

    <div style="background:transparent; border:0px; padding:0px">
    <pre>
        <strong>if</strong>(Yii::<em>app</em>()-&gt;<strong>user</strong>-&gt;checkAccess(<strong>&#39;admin&#39;</strong>))
        {
            Yii::<em>app</em>()-&gt;<strong>translate</strong>-&gt;renderMissingTranslationsEditor();
        }
        <span style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em">/</span><em style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em">* or only certain categories</em><em style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em">*/
        </em><em style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em">/*</em><em style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em"> Yii::app()-&gt;translate-&gt;renderTranslationsEditor(array(&#39;index&#39;,&#39;menu&#39;)); </em><em style="font-family:sans-serif,arial,verdana,trebuchet ms; line-height:1.6em">*/</em>
    </pre>

    </div>
    <br />
    The first method and due to the view rendering nature of Yii, I highly recommend the display of those functions at the bottom of your&nbsp;<strong>main</strong>&nbsp;or&nbsp;<strong>base</strong>&nbsp;layout, as it will collect all missing ones throughout the rendering processes.<br />
    Remember the translations are automatically collected when Yii goes through all those<strong>Yii::t(&#39;category&#39;,&#39;translation text&#39;);</strong>&nbsp;statements throughout your code and fires the onMissingTranslation event.
</div>


<style>
    pre {
        display: block;
        padding: 9.5px;
        margin: 0 0 10px;
        font-size: 13px;
        line-height: 1.42857143;
        color: #333;
        word-break: break-all;
        word-wrap: break-word;
        background-color: #f5f5f5;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
</style>