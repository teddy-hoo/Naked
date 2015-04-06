<?php

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Email as EmailValidator;
use Phalcon\Mvc\Model\Validator\Uniqueness as UniquenessValidator;

class Users extends Model
{

    public $uid;
    public $username;
    public $password;
    public $name;
    public $email;
    public $active;

    public function initialize () {

        $this->hasMany('uid', 'Blogs', 'author_id');

    }

}
