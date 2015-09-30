<?php

class ElFinderConnectorAction extends CAction
{
    /**
     * @var array
     */
    public $settings = array();

    public function run()
    {
        $elFinderPath = Yii::getPathOfAlias('ext.elfinder');


        include_once $elFinderPath.'/php/elFinderConnector.class.php';
        include_once $elFinderPath.'/php/elFinder.class.php';
        include_once $elFinderPath.'/php/elFinderVolumeDriver.class.php';
        include_once $elFinderPath.'/php/elFinderVolumeLocalFileSystem.class.php';
        // Required for MySQL storage connector
        // include_once dirname(__FILE__).DIRECTORY_SEPARATOR.'elFinderVolumeMySQL.class.php';
        // Required for FTP connector support
        // include_once dirname(__FILE__).DIRECTORY_SEPARATOR.'elFinderVolumeFTP.class.php';




        // Documentation for connector options:
        // https://github.com/Studio-42/elFinder/wiki/Connector-configuration-options
        $opts = array(
            'debug' => true,
            'roots' => array(
                $this->settings
            )
        );


        // run elFinder
        $connector = new elFinderConnector(new elFinder($opts));
        $connector->run();

    }
}
