<?php
/**
 * User controller
 */
class DefaultController extends SAdminController
{ 

	/**
	 * Display users list
	 */
	public function actionIndex()
	{
		$model = new MessageSource('search');
		$model->unsetAttributes();

		if (!empty($_GET['MessageSource']))
			$model->attributes = $_GET['MessageSource'];

		$dataProvider = $model->search();
		$dataProvider->pagination->pageSize = Yii::app()->settings->get('core', 'productsPerPageAdmin');

		$this->render('list', array(
			'model'=>$model,
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Create new user
	 */
	public function actionCreate()
	{
		$this->actionUpdate(true);
	}

	/**
	 * Create/update user
	 * @param boolean $new
	 */
	public function actionUpdate($new = false)
	{
		if($new === true)
		{
			$model = new MessageSource;
		}
		else
			$model = MessageSource::model()->findByPk($_GET['id']);
		if (!$model)
			throw new CHttpException(400, 'Bad request.');

		if(Yii::app()->request->isPostRequest)
		{
			$model->attributes = $_POST['MessageSource'];

			$valid = $model->validate();

			if($valid)
			{
				$model->save();
				$this->applyTranslate($model);

				$this->setFlashMessage(Yii::t('TranslateModule.core', 'Изменения успешно сохранены'));
				if (isset($_POST['REDIRECT']))
					$this->smartRedirect($model);
				else
					$this->redirect(array('index'));
			}
		}

		$this->render('update', array(
			'model'=>$model,
		));
	}

	/**
	 * Delete user by Pk
	 */
	public function actionDelete()
	{
		if (Yii::app()->request->isPostRequest)
		{
			$ids    = Yii::app()->request->getParam("id");
			$models = MessageSource::model()->findAllByPk($ids);

			if(!empty($models))
			{
				foreach ($models as $messageSource)
				{
					$messageSource->delete();
				}
			}

			if (!Yii::app()->request->isAjaxRequest)
				$this->redirect('index');
		}
	}

	/**
	 * Info page
	 */
	public function actionInfo()
	{
		$this->render('info');
	}


	protected function applyTranslate($model)
	{
		if(!isset($_POST['Message']['translation']) || empty($_POST['Message']['translation']))
			return false;

		foreach($_POST['Message']['translation'] as $lang => $translateText)
		{
			$message = Message::model()->findByPk(array('id' => $model->id, 'language' => $lang));
			if(!$message)
			{
				$message = new Message();
				$message->id = $model->id;
				$message->language = $lang;
			}
			$message->translation = $translateText;
			$message->save();
		}

		return true;
	}

}
