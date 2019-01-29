<?php

namespace App\Modules\app;

use Sintattica\Atk\Attributes\Attribute;
use Sintattica\Atk\Core\Node;
use Sintattica\Atk\Relations\ManyToOneRelation;

class Conference_Speaker extends Node
{
    function __construct($nodeUri)
    {
        parent::__construct($nodeUri);
        $this->setTable('app_conference_speaker');

        $this->add(new ManyToOneRelation('speaker_id', Attribute::AF_PRIMARY, 'app.speaker'));
        $this->add(new ManyToOneRelation('conference_id', Attribute::AF_PRIMARY, 'app.conference'));
    }
}
