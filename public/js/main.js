App = {
	Models: {},
	Views: {},
	Collections: {},
	Router: {}
};

App.template = function(id){
	return _.template( $('#' + id).html() );
};


window.vent = _.extend( {}, Backbone.Events ); 


ymaps.ready(function(){

//alert('123');

map = new ymaps.Map("map", {
            center: [45.040216, 38.975996], 
            zoom: 6
        });
/*45.040216, 38.975996*/

/*var myPlacemark = new  ymaps.Placemark([45.040216, 38.975996]);
map.geoObjects.add(myPlacemark);*/

/*var myPlacemark = new  ymaps.Placemark([45.040216, 38.975996]);
map.geoObjects.add(myPlacemark);

ymaps.geocode('Невинномысск').then(
  // Геокодер возвращает результаты в виде коллекции
  function (res) {
    // Восьмой результат
    map.geoObjects.add(res.geoObjects.get(0));
    //console.log(res.geoObjects.get(0));
  }
);
*/

// Осуществляет поиск объекта с именем "Москва".
// Полученный результат сразу отображается на карте.

/*
var myGeocoder = ymaps.geocode("город Краснодар");
myGeocoder.then(
    function (res) {
        map.geoObjects.add(res.geoObjects);
        // Выведем в консоль данные, полученные в результате геокодирования объекта.
        coords = res.geoObjects.get(0).geometry.getCoordinates();
    },
    function (err) {
        // обработка ошибки
    }
);
*/

});


