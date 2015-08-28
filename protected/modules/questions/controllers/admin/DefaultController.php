<?php

class DefaultController extends SAdminController {

	/**
	 * Display pages list.
	 */
	public function actionIndex()
	{
	   
		$model = new Questions('search');

		if (!empty($_GET['Questions']))
			$model->attributes = $_GET['Questions'];

		$dataProvider = $model->search();
		$dataProvider->pagination->pageSize = Yii::app()->settings->get('core', 'productsPerPageAdmin');

		$this->render('index', array(
			'model'=>$model,
			'dataProvider'=>$dataProvider
		));
	}

	public function actionCreate()
	{
		$this->actionUpdate(true);
	}

	/**
	 * Create or update new page
	 * @param boolean $new
	 */
	public function actionUpdate($new = false)
	{
		if ($new === true)
		{
			$model = new Questions;
		}
		else
		{
			$model = Questions::model()
                ->findByPk($_GET['id']);
		}

		if (!$model)
			throw new CHttpException(404, Yii::t('QuestionsModule.core', 'Опросы не найдена.'));

		$form = new STabbedForm('application.modules.questions.views.admin.default.questionsForm', $model);
   	
    	if (Yii::app()->request->isPostRequest)
		{
			$model->attributes = $_POST['Questions'];

			if ($model->validate())
			{
				$model->save();
               
				$this->setFlashMessage(Yii::t('QuestionsModule.core', 'Изменения успешно сохранены'));

				if (isset($_POST['REDIRECT']))
					$this->smartRedirect($model);
				else
					$this->redirect(array('index'));
			}
		}

		$this->render('update', array(
			'model'=>$model,
			'form'=>$form,
		));
	}

	/**
	 * Delete page by Pk
	 */
	public function actionDelete()
	{
		if (Yii::app()->request->isPostRequest)
		{
			$model = Questions::model()->findAllByPk($_REQUEST['id']);

			if (!empty($model))
			{
				foreach($model as $page)
					$page->delete();
			}

			if (!Yii::app()->request->isAjaxRequest)
				$this->redirect('index');
		}
	}
    
   public function actionResult()
	{
	   if(isset($_GET['id']))
       {
        $Questions = Questions::model()->findByPk($_GET['id']);
          echo"<div class='Questions-results'>";
              foreach( $Questions->getChoice($Questions->id) as $choice)
              {
                echo CHtml::openTag("div",array("class"=>"result"));
                    echo CHtml::openTag("div",array("class"=>"label"));
                        echo $choice->name;
                    echo CHtml::closeTag("div");
                    echo CHtml::openTag("div",array("class"=>"bar"));
                        echo "<div class='fill' style='width: ".$choice->getVote($choice->id)."%;'></div>";
                    echo CHtml::closeTag("div");
                     echo CHtml::openTag("div",array("class"=>"totals"));
                        echo "<span class='percent'>".$choice->getVote($choice->id)."%</span>";
                    echo CHtml::closeTag("div");
                echo CHtml::closeTag("div");
              }
          echo"</div>";
        
       }
	}
    
    
}