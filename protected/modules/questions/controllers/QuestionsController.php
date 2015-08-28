<?php

class QuestionsController extends Controller {

    public function actionIndex()
	{
	   $this->layout = "//layouts/toshnur_inner";
       
	   $model = new Questions;
       
       $model->scenario = "quest";
       
       $this->performAjaxValidation($model);
       
       $cr = new CDbCriteria;
       $cr->select = "t.*";
       $cr->condition = "t.lang='".Yii::app()->language."' and t.status = 1"; 
       
       $dataProvider = new CActiveDataProvider('Questions',array(
       
       "criteria"=>$cr,
       ));
       
       if(isset($_POST['Questions']))
       {
        
            $model->attributes = $_POST['Questions'];
            $model->lang = Yii::app()->language;
            
            if ($model->validate())
			{
                $model->save();
                Yii::app()->user->setFlash('questions', Yii::t("blog","Благодарим Вас за обращение к нам. Мы ответим вам как можно скорее."));
                $this->refresh();
            }
            
        
       }
       
       
	  $this->render("index",array(
       "model"=>$model,
       "dataProvider"=>$dataProvider
      )); 
	}



	public function actionAjax()
	{
	   $pollVote = new PollVote; 
       
	   if(isset($_POST['choice']))
        {
           $choice = PollChoice::model()->findByPk($_POST['choice']);
           
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
        $poll = Poll::model()->findByPk($_GET['id']);
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
    
  
    protected function performAjaxValidation($model)
    {
        if(isset($_POST['ajax']) && $_POST['ajax']==='questions-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }
}