<?php

/**
 * Main application class.
 *
 * @package app.components
 *
 * @property SSystemSettings $settings
 * @property SCurrencyManager $currency
 * @property SCart $cart
 * @property SLanguageManager $languageManager
 */
class SWebApplication extends CWebApplication
{

	private $_theme=null;

	/**
	 * @param null $config
	 */
	public function __construct($config=null)
	{
		parent::__construct($config);
	}

	/**
	 * Initialize component
	 */
	public function init()
	{
		$this->setSystemModules();
		parent::init();
	}

	/**
	 * Set enabled system modules to enable url access.
	 */
	protected function setSystemModules()
	{
		// Enable installed modules
		$modules = SystemModules::getEnabled();

		if($modules)
		{
			foreach($modules as $module)
			{
				$this->setModules(array($module->name));

				$_module = $this->getModule($module->name);
				if($_module->preload)
				{
					$_module->preload();
				}
			}
		}
	}

	/**
	 * @return CTheme
	 */
	public function getTheme()
	{
		if($this->_theme===null)
			$this->_theme=$this->getThemeManager()->getTheme(Yii::app()->settings->get('core', 'theme'));
		return $this->_theme;
	}
}