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
            $this->flash->success('This is a sample application of the Phalcon Framework.
                Please don\'t provide us any personal information. Thanks');
        }
    }
}
