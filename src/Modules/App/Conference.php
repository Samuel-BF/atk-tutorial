<?php

namespace App\Modules\App;

use Sintattica\Atk\Core\Node;
use Sintattica\Atk\Attributes\Attribute;
use Sintattica\Atk\Attributes\DateTimeAttribute;
use Sintattica\Atk\Attributes\DurationAttribute;
use Sintattica\Atk\Attributes\TextAttribute;
use Sintattica\Atk\Relations\ManyToOneRelation;
use Sintattica\Atk\Security\SecurityManager;

class Conference extends Node
{
    function __construct($nodeUri)
    {
        parent::__construct($nodeUri, Node::NF_ADD_LINK | Node::NF_EDITAFTERADD);
        $this->setTable('app_conference');

        $this->add(new Attribute('id', Attribute::AF_AUTOKEY));
        $this->add(new Attribute('title', Attribute::AF_OBLIGATORY | Attribute::AF_SEARCHABLE));
        $this->add(new Attribute('subtitle'));
        $this->add(new Attribute('speakers', Attribute::AF_SEARCHABLE));
        $this->add(new TextAttribute('description', Attribute::AF_HIDE_LIST));
        $this->add(new ManyToOneRelation('room', Attribute::AF_OBLIGATORY | Attribute::AF_SEARCHABLE | ManyToOneRelation::AF_RELATION_AUTOLINK, 'app.room'));
        $this->add(new DateTimeAttribute('start', Attribute::AF_OBLIGATORY));
        $this->add(new DurationAttribute('duration', Attribute::AF_OBLIGATORY));

        $this->setDescriptorTemplate('[title]');
    }
}
