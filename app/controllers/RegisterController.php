<?php

class RegisterController extends ControllerBase {

    public function initialize () {
        
        $this->tag->setTitle('Sign Up/Sign In');
        parent::initialize();
    
    }

    private function registerUser () {

        $request        = $this->request;
        $name           = $request->getPost('name', array('string', 'striptags'));
        $username       = $request->getPost('username', 'alphanum');
        $email          = $request->getPost('email', 'email');
        $password       = $request->getPost('password');
        $repeatPassword = $request->getPost('repeatPassword');

        if ($password != $repeatPassword) {
            $this->flash->error('Passwords are diferent');
            return false;
        }

        $user = new Users();
        $user->username = $username;
        $user->password = sha1($password);
        $user->name = $name;
        $user->email = $email;
        $user->created_at = new Phalcon\Db\RawValue('now()');
        $user->active = 'Y';

        if ($user->save() == false) {
            return false;
        }

        Auth::registerSession($this, $user);

        return $user;

    }

    public function indexAction () {

        if ($this->request->isPost()) {

            $user = $this->registerUser();

            if ($user) {
                $this->flash->success('Thanks for sign-up, be naked now!');
                return $this->forward('index/index');
            }

            foreach ($user->getMessages() as $message) {
                $this->flash->error((string) $message);
            }

        }

    }
}