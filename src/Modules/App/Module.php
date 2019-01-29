<?php

namespace App\Modules\App;

class Module extends \Sintattica\Atk\Core\Module
{
    static $module = 'app';

    public function register()
    {
        $this->registerNode('conference', Conference::class, ['admin', 'add', 'edit', 'delete']);
        $this->registerNode('room', Room::class, ['admin', 'add', 'edit', 'delete']);
        $this->registerNode('speaker', Speaker::class, ['admin', 'add', 'edit', 'delete']);
        $this->registerNode('conference_speaker', Conference_Speaker::class);
    }

    public function boot()
    {
        $this->addNodeToMenu('Conferences', 'conference', 'admin');
        $this->addNodeToMenu('Rooms', 'room', 'admin');
        $this->addNodeToMenu('Speakers', 'speaker', 'admin');
    }
}
