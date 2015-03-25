<?php
return array(
    'connectionString'=>'mysql:host=127.0.0.1;dbname=cms.loc',
    'username'=>'root',
    'password'=>'',
    'enableProfiling'       => YII_DEBUG, // Disable in production
    'enableParamLogging'    => YII_DEBUG, // Disable in production
    'emulatePrepare'        => true,
    'schemaCachingDuration' => YII_DEBUG ? 0 : 3600,
    'charset'               => 'utf8',
);