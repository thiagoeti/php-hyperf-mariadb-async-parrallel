<?php

namespace App\Model;

use Hyperf\DbConnection\Db;

class ModelFamily extends Model
{
	static public function data()
	{
		$family=Db::select('SELECT * FROM `family`;');
		return $family;
	}

	static public function mount()
	{
		$parallel=new \Hyperf\Coroutine\Parallel();

		$parallel->add(function(){
			$data=Db::select('SELECT * FROM `family`;');
			return $data;
		});

		$parallel->add(function(){
			$data=Db::select('SELECT * FROM `pet`;');
			sleep(2); // important add time test
			return $data;
		});

		$parallel->add(function(){
			$data=Db::select('SELECT * FROM `car`;');
			sleep(1); // important add time test
			return $data;
		});

		$parallel->add(function(){
			$data=Db::select('SELECT * FROM `family_setting`;');
			return $data;
		});

		$result=$parallel->wait();
		$result=[
			'family'=>$result[0],
			'pet'=>$result[1],
			'car'=>$result[2],
			'family_setting'=>$result[3],
		];

		return $result;
	}
}
