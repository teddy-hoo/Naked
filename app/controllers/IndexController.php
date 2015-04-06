<?php

class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Posts');
        parent::initialize();
    }

    public function indexAction()
    {
        if (!$this->request->isPost()) {

            $this->view->title = 'title';
            $this->view->content = 'content';
            $this->flash->success('We select the best posts suiting for you!');

            $blogs = Blogs::find();

        }
    }
}
