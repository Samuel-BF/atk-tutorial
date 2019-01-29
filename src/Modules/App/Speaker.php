<?php

namespace App\Modules\App;

use Sintattica\Atk\Core\Node;
use Sintattica\Atk\Attributes\Attribute;
use Sintattica\Atk\Attributes\UrlAttribute;
use Sintattica\Atk\Relations\ManyToManySelectRelation;

class Speaker extends Node
{
    function __construct($nodeUri)
    {
        parent::__construct($nodeUri, Node::NF_ADD_LINK | Node::NF_EDITAFTERADD);
        $this->setTable('app_speaker');

        $this->add(new Attribute('id', Attribute::AF_AUTOKEY));
        $this->add(new Attribute('name', Attribute::AF_OBLIGATORY));
        $this->add(new Attribute('description', Attribute::AF_HIDE_LIST));
        $this->add(new UrlAttribute('URL', Attribute::AF_POPUP));
        $this->add(new ManyToManySelectRelation('conference', Attribute::AF_HIDE_LIST | ManyToManySelectRelation::AF_MANYTOMANY_DETAILVIEW, 'app.conference_speaker', 'app.conference'));

        $this->setDescriptorTemplate('[name]');
    }
}
