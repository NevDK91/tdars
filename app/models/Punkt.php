<?php

class Punkt extends Eloquent {

	public $table = 'punkt';
	public $fillable = ['id', 'rejimRab', 'id_city', 'phone, coords, addr'];
	public $timestamps = false;
	public function city(){

		return $this->belongsTo('City', 'id_city', 'id');

	}


}
