<?php

namespace App\Controller;

//use Hyperf\Di\Annotation\Inject;
//use Hyperf\HttpServer\Contract\RequestInterface;

use \App\Model\ModelFamily;

class ControllerFamily
{
	//#[Inject]
	//protected RequestInterface $request;
	public function data()
	{
		$family=ModelFamily::data();
		return $family;
	}
	public function mount()
	{
		$data=ModelFamily::mount();
		return $data;
	}
}
