<?php

namespace App\Modules\App;

class Module extends \Sintattica\Atk\Core\Module
{
    static $module = 'app';

    public function register()
    {
        $this->registerNode('conference', Conference::class, ['admin', 'add', 'edit', 'delete']);
        $this->registerNode('room', Room::class, ['admin', 'add', 'edit', 'delete']);
    }

    public function boot()
    {
        $this->addNodeToMenu('Conferences', 'conference', 'admin');
        $this->addNodeToMenu('Rooms', 'room', 'admin');
    }
}
