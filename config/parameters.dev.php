<?php

return [
    'atk' => [

        'identifier' => 'atk-skeleton-dev',

        'db' => [
            'default' => [
                'host' => 'localhost',
                'db' => 'conference',
                'user' => 'conference',
                'password' => 'conference',
                'charset' => 'utf8',
                'driver' => 'MySqli',
            ],
        ],

        'debug' => 1,
        'meta_caching' => false,
        'auth_ignorepasswordmatch' => false,
        'administratorpassword' => '$2y$10$HURwCzn3JJmSV.8UZEVW/eaO/RSlYKELKFacIwTyKSPssxp101XDC', // demo
    ],
];
