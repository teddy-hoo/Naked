<?php

class BlogsController extends ControllerBase
{

    public function indexAction()
    {
        if (!$this->request->isPost()) {

            $this->view->title = 'title';
            $this->view->content = 'content';
            $this->flash->success('We select the best posts suit for you!');

            $blogs = Blogs::find();


            // title = 'title';

        }
    }

    public function loadAction () {

        $newBlog = new Blogs();

        if (!$this->request->isPost()) {

        }

    }


}
