<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'xncj_osec',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'osec\controllers',
    //'bootstrap' => ['log'],
    //'HomeUrl'=>'index.php?r=admin',
    'name'=>'OSEC',
    'language'=>'zh-CN',
    //'debug'=>false,
    'components' => [
        'user' => [
            'identityCookie' => [
                'name'     => '_backendIdentity',
                'path'     => '/',
                'httpOnly' => true,
            ],
        ],
        'session' => [
            'name' => 'BACKENDSESSID',
            'cookieParams' => [
                'httpOnly' => true,
                'path'     => '/',
            ],
        ],
        /*'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],*/
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'i18n' => [
            'translations' => [
                'common' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    //'basePath' => '/messages',
                    'fileMap' => [
                        'common' => 'common.php',
                    ],
                ],
                'power' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    //'basePath' => '/messages',
                    'fileMap' => [
                        'power' => 'power.php',
                    ],
                ],
                'osec' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@common/messages',
                    'sourceLanguage' => 'zh-CN',
                    'fileMap' => [
                        'osec' => 'osec.php',
                    ],
                ],
                'model*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    //'basePath' => '/messages',
                    'fileMap' => [
                        'model' => 'model.php',
                        'model/pic' => 'pic.php',
                    ],
                ],
            ],
        ],
        /*'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            //'suffix'=>'.html',
            'rules'=>[
            ],
        ],*/
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
            'itemTable' => 'auth_item',
            'assignmentTable' => 'auth_assignment',
            'itemChildTable' => 'auth_item_child',
            "defaultRoles" => ["guest"],
        ],
        'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
                'text/json' => 'yii\web\JsonParser',
            ],
            'enableCsrfValidation' => false,
        ],

        'urlManager' => [
            //'class' => 'common\components\AppsUrlManage',
            'enablePrettyUrl' => true,
            "enableStrictParsing" => false,
            'showScriptName' => false,
            //
            'rules' => [
                //'prefix' => 'riem',
                //'<controller:\w+>/<action:\w+>' => '<controller>/<action>',
                '/<app:\w+>/<controller:\w+>/<action:\w+>' => '/<controller>/<action>',
                //'/riem/<controller:\w+>/<action:\w+>' => '<controller>/<action>',
                //'/riem/user/<action:(login|logout)>'               => 'user/security/<action>',
                /************ user rules ******************/
                '<app:\w+>/user/<controller:\w+>/<action:\w+>'          => 'user/<controller>/<action>',

                '<app:\w+>/user/<id:\d+>'                               => 'user/profile/show',
                '<app:\w+>/user/<action:(login|logout)>'                => 'user/security/<action>',

                '<app:\w+>/user/<action:(register|resend)>'             => 'user/registration/<action>',
                '<app:\w+>/user/confirm/<id:\d+>/<code:[A-Za-z0-9_-]+>' => 'user/registration/confirm',
                '<app:\w+>/user/forgot'                                 => 'user/recovery/request',
                '<app:\w+>/user/recover/<id:\d+>/<code:[A-Za-z0-9_-]+>' => 'user/recovery/reset',
                '<app:\w+>/user/settings/<action:\w+>'                  => 'user/settings/<action>',



                '/osec/admin/<controller:\w+>/<action:\w+>'     => '/admin/<controller>/<action>',
                //'/osec/admin/assignment/index'     => '/admin/assignment',


                //'/<app:\w+>/admin'                                   => '/admin',
                //'/<app:\w+>/admin/<module:\w+>/<controller:\w+>/<action:\w+>' => '/admin/<module>/<controller>/<action>',

                //'/<app:\w+>/admin/<controller:\w+>'                  => '/admin/<controller>/index',



                '/<app:\w+>/user/login' => '/user/login',
                '/<app:\w+>/user/logout' => '/user/logout',
                //'/riem/<prefix:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/<controller>/<action>',
            ],
        ],

        /*"urlManager" => [
            //用于表明urlManager是否启用URL美化功能，在Yii1.1中称为path格式URL，
            // Yii2.0中改称美化。
            // 默认不启用。但实际使用中，特别是产品环境，一般都会启用。
            "enablePrettyUrl" => true,
            // 是否启用严格解析，如启用严格解析，要求当前请求应至少匹配1个路由规则，
            // 否则认为是无效路由。
            // 这个选项仅在 enablePrettyUrl 启用后才有效。
            "enableStrictParsing" => false,
            // 是否在URL中显示入口脚本。是对美化功能的进一步补充。
            "showScriptName" => false,
            // 指定续接在URL后面的一个后缀，如 .html 之类的。仅在 enablePrettyUrl 启用时有效。
            "suffix" => "",
            "rules" => [
                "<controller:\w+>/<id:\d+>"=>"<controller>/view",
                "<controller:\w+>/<action:\w+>"=>"<controller>/<action>",
                //['class' => 'yii\rest\UrlRule', 'controller' => 'backend\modules\rest\controllers\UserController'],
            ],
        ],*/
        "view" => [
            "theme" => [
                "pathMap" => [
                    //"@app/views" => "@vendor/dmstr/yii2-adminlte-asset/example-views/yiisoft/yii2-app"
                    "@vendor/dektrium/yii2-user/views" => "@app/views/dektrium"
                ],
            ],
        ],
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        /*'allowActions' => [
            'site/*',
            //'site/index',
            'user/profile/show',
            //'user/login',
            'user/registration/*',
            'document/view',
            'frontend/*',
            //'admin/*',
            //此处的action列表，允许任何人（包括游客）访问
            //所以如果是正式环境（线上环境），不应该在这里配置任何东西，为空即可
            //但是为了在开发环境更简单的使用，可以在此处配置你所需要的任何权限
            //在开发完成之后，需要清空这里的配置，转而在系统里面通过RBAC配置权限
        ]*/
    ],
    /*'request' => [
        'parsers' => [
            'application/json' => 'yii\web\JsonParser',
        ]
    ],*/
    'modules' => [
        'user' => [
            'class' => 'dektrium\user\Module',
            'confirmWithin' => 21600,
            'cost' => 12,
            'admins' => ['admin','xq1024'],
            //'enablePrettyUrl' => false,
            //'layout' => 'left-menu',
            //'urlPrefix' => 'user',
            /*'urlRules' => [
                '<id:\d+>'                               => 'profile/show',
                '<action:(login|logout)>'                => 'security/<action>',
                '<action:(register|resend)>'             => 'registration/<action>',
                'confirm/<id:\d+>/<code:[A-Za-z0-9_-]+>' => 'registration/confirm',
                'forgot'                                 => 'recovery/request',
                'recover/<id:\d+>/<code:[A-Za-z0-9_-]+>' => 'recovery/reset',
                'settings/<action:\w+>'                  => 'settings/<action>',
                '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
            ],*/
        ],
        'frontend' => [
            'class' => 'backend\modules\frontend\Frontend',
            'viewPath'=>'@app/views',
            //'layout' => '@app/views/layouts/main_nav.php',
        ],
        'rest' => [
            'class' => 'backend\modules\rest\Rest',
        ],
        'social' => [
            'class' => 'backend\modules\social\Social',
        ],
        /*'debug' => [
            'class' => 'yii\debug\Module',
        ],*/
        'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ],
        'admin' => [
            'class' => 'mdm\admin\Module',
            'layout' => 'left-menu', // it can be '@path/to/your/layout'.
            'controllerMap' => [
                'assignment' => [
                    'class' => 'mdm\admin\controllers\AssignmentController',
                    'userClassName' => 'common\models\User',
                    'idField' => 'id'
                ],
                ///'userClassName' => 'common\models\User',
                'route' => [
                    'class' => 'mdm\admin\controllers\RouteController', // add another controller
                    //'userClassName' => 'common\models\User',

                ],
            ],
            'mainLayout' => '@app/views/layouts/main.php',
            'menus' => [
                'assignment' => [
                    'label' => 'Grand Access' // 更改label
                ],
                'route' => [
                    'label' => '路由' // 更改label
                ],
                //'route' => null, // 禁用菜单
            ]
        ],
        'treemanager' =>  [
            'class' => 'kartik\tree\Module',
        ]
    ],
    "aliases" => [
        "@mdm/admin" => "@vendor/mdmsoft/yii2-admin",
        "@views" => "@app/views",
    ],
    'params' => $params,
];
