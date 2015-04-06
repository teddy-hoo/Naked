<?php

class SessionController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Sign Up/Sign In');
        parent::initialize();
    }

    public function indexAction () {

    }

    public function startAction () {

        if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            $user = Users::findFirst(array(
                "(email = :email: OR username = :email:) AND password = :password: AND active = 'Y'",
                'bind' => array('email' => $email, 'password' => sha1($password))
            ));

            if ($user != false) {
                Auth::registerSession($this, $user);
                $this->flash->success('Welcome ' . $user->name);
                return $this->forward('index/index');
            }

            $this->flash->error('Wrong email/password');
        }

        return $this->forward('session/index');
    }

    public function endAction () {
        
        Auth::removeSession($this);
        $this->flash->success('Goodbye!');
        return $this->response->redirect('index/index');
    
    }
}
