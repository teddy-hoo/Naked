<?php

use Phalcon\Mvc\Model;

/**
 * Types of Products
 */
class Blogs extends Model{
    
    public $bid;
    public $author_id;
    public $title;
    public $content;
    public $key_words;

    public function initialize () {

    	$this->belongsTo('author_id', 'Users', 'uid');

    }

}
