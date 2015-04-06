<?php

class Auth {

	public static function getUser ($controller) {

		if ($controller->cookies->has('auth')) {
			$uid = $controller->cookies->get('auth');
			$user = Users::findFirstByUid(intval($uid));
			return $user;
		}

		return null;

	}

	public static function registerSession ($controller, $user) {

		if ($controller->cookies->has('auth')) {
			self::removeSession($controller);
		}

		$controller->cookies->set('auth', 
								  $user->uid), 
								  time() + 86400 * 30);

	}

	public static function removeSession ($controller) {

		$controller->cookies->get('auth')->delete();

	}

	public static function getRole ($controller) {

		return $controller->cookies->has('auth') ? 'Users' : 'Guests';

	}

	public static function isLoggedIn ($controller) {

		return $controller->cookies->has('auth');

	}

}