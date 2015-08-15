<?php

class punktsController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$res = DB::table('punkt')->select('punkt.id', 'punkt.rejimRab', 'punkt.phone', 'punkt.addr', 'city.name')->join('city','city.id','=','punkt.id_city')->get();
		//$res = Punkt::all();
		
		
		foreach($res as $city){
			$data[$city->name][$city->id] = [
				'id' => $city->id,
				'Адрес' => $city->addr,
				'Режим_работы' => $city->rejimRab,
				'Телефон' => $city->phone
			];

		}
		
		return json_encode($data);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$res = Punkt::findOrFail($id);
		return json_encode($res);
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$coords = Input::all();
		print_r($coords);
		$x = $coords["X"];
		$y = $coords["Y"];
		$row = Punkt::findOrFail($id);
		$row->coords = $x."/".$y;
		$row->save();
		return "запись ".$id." Обновлена!";

	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
