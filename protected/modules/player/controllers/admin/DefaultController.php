<?php

class DefaultController extends SAdminController {

	/**
	 * Display pages list.
	 */
	public function actionIndex()
	{
	   
		$model = new PlayerPlaylist('search');

		if (!empty($_GET['PlayerPlaylist']))
			$model->attributes = $_GET['PlayerPlaylist'];

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
			$model = new PlayerPlaylist;
		}
		else
		{
			$model = PlayerPlaylist::model()
                ->language($_GET)
				->findByPk($_GET['id']);
		}

		if (!$model)
			throw new CHttpException(404, Yii::t('PlayerModule.core', 'Опросы не найдена.'));

		$form = new STabbedForm('application.modules.player.views.admin.default.playerForm', $model);
   	
    	$form->additionalTabs = array(
			Yii::t('PlayerModule.core','Файлы') => $this->renderPartial('_files', array(
				'model' => $model,
			), true),
		);
    
		if (Yii::app()->request->isPostRequest)
		{
			$model->attributes = $_POST['PlayerPlaylist'];

			if ($model->validate())
			{
				$model->save();
               $this->saveChoice($model);
				$this->setFlashMessage(Yii::t('PlayerModule.core', 'Изменения успешно сохранены'));

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
			$model = PlayerPlaylist::model()->findAllByPk($_REQUEST['id']);

			if (!empty($model))
			{
				foreach($model as $page)
					$page->delete();
			}

			if (!Yii::app()->request->isAjaxRequest)
				$this->redirect('index');
		}
	}
    
    /** 
	 * Save attribute choice
	 * @param StoreAttribute $model
	 */
	protected function saveChoice($model)
	{ 
	  	$dontDelete = array();
		if(!empty($_POST['choice']))
		{
			$sort = 0;
			foreach($_POST['choice'] as $key=>$val)
			{ 
			  
			 	if(isset($val[0]) && $val[0] != '')
				{
					$index = 0;

					$poll_choice = PlayerPlaylistChoice::model()
						->findByAttributes(array(
							'id'=>$key,
							'poll_id'=>$model->id
						));

					if(!$poll_choice)
					{
						$poll_choice = new PlayerPlaylistChoice;
						$poll_choice->poll_id = $model->id;
					}
					$poll_choice->sort = $sort;
					$poll_choice->save(false);

					foreach(Yii::app()->languageManager->languages as $lang)
					{
						$poll_choice = PlayerPlaylistChoice::model()
							->language($lang->id)
							->findByAttributes(array(
								'id'=>$poll_choice->id
							));
						$poll_choice->name = $val[$index];
						$poll_choice->save(false);

						++$index;
					}

					array_push($dontDelete, $poll_choice->id);

					$sort++;
				}
			}
		}

		if(sizeof($dontDelete))
		{
			$cr = new CDbCriteria;
			$cr->addNotInCondition('t.id', $dontDelete);
			$choiseToDelete = PlayerPlaylistChoice::model()->findAllByAttributes(array(
				'poll_id'=>$model->id
			), $cr);
		}
		else
		{
			// Clear all attribute choise
			$choiseToDelete = PlayerPlaylistChoice::model()->findAllByAttributes(array(
				'poll_id'=>$model->id
			));
		}

		if(!empty($choiseToDelete))
		{
			foreach($choiseToDelete as $o)
				$o->delete();
		}
	}
    
	public function actionAjax()
	{
	   $pollVote = new PlayerPlaylistVote;
       
	   if(isset($_POST['choice']))
        {
           
           $choice = PlayerPlaylistChoice::model()->findByPk($_POST['choice']);
           
           $choice->votes = $choice->votes + 1;   
           
           $pollVote->poll_id = $choice->poll_id; 
           
           $pollVote->choice_id = $choice->id;
           
           $pollVote->user_id = Yii::app()->user->id;
           
           $pollVote->ip_address = Yii::app()->request->userHostAddress; 
           
           $pollVote->time = date("Y.m.j ");
           
           $pollVote->save();
           $choice->save();
        }
	}
    
    public function actionResult()
	{
	   if(isset($_GET['id']))
       {
        $poll = PlayerPlaylist::model()->findByPk($_GET['id']);
          echo"<div class='poll-results'>";
              foreach( $poll->getChoice($poll->id) as $choice)
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