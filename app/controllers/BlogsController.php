<?php

class BlogsController extends ControllerBase {
    
    public function initialize () {
        $this->tag->setTitle('Write blog');
        parent::initialize();
    }

    public function indexAction () {
        var_dump('expression');
    }

}
