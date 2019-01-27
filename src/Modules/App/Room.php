<?php

namespace App\Modules\App;

use Sintattica\Atk\Core\Node;
use Sintattica\Atk\Attributes\Attribute;
use Sintattica\Atk\Attributes\NumberAttribute;
use Sintattica\Atk\Relations\OneToManyRelation;
use Sintattica\Atk\Security\SecurityManager;

class Room extends Node
{
    function __construct($nodeUri)
    {
        parent::__construct($nodeUri, Node::NF_ADD_LINK | Node::NF_EDITAFTERADD);
        $this->setTable('app_room');

        $this->add(new Attribute('id', Attribute::AF_AUTOKEY));
        $this->add(new Attribute('name', Attribute::AF_OBLIGATORY));
        $this->add(new NumberAttribute('capacity'));
        $this->add(new OneToManyRelation('conferences', Attribute::AF_HIDE_LIST, 'app.conference', 'room'));

        $this->setDescriptorTemplate('[name]');
    }
}
