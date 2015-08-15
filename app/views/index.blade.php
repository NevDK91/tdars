    <!doctype html>
    <html ng-app lang="ru-RU">
      <head>
      <meta charset="utf-8">
      <style>
      li{
        list-style-type:none;
      }
      .wrapper{
        width:1102px;
        margin-left:30px;
      }
      #punkts{
        margin-right:0px;
        width:400px;
        float:left;
      }
       #map{
        position:fixed;
        right:150px;
        border:1px dashed red;
        width: 600px; height: 400px;
      }
      #punkts ul{
        padding:0;
        margin:0;
        margin-top:5px;
        margin-left:15px;
      }

      #punkts a{
        color:black;
        text-decoration:none;
      }
      #punkts a:hover{
        color:#003366;
        text-decoration:none;
      }
      .punkt:hover{
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
      }
      </style>
      </head>
      <body>
      <div class="wrapper">
<div id="punkts">
</div>
    <div id="map">
          
    </div>
    </div>

        <script type="text/javascript" src="js/underscore.js"></script>
        <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
        <script type="text/javascript" src="js/backbone.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <script type="text/javascript" src="js/Models.js"></script>
        <script type="text/javascript" src="js/Collections.js"></script>
        <script type="text/javascript" src="js/Views.js"></script>
        <script type="text/javascript" src="js/Router.js"></script>

        <script>

        $(document).ready(function(){

          ymaps.ready(function(){

      $.getJSON( "/punkts", function( data ) {
        
        /*var myPlacemark = new  ymaps.Placemark([45.05, 38.95]);
        map.geoObjects.add(myPlacemark);*/


      var items = [];
      var li = '';
      var punkt_obj = [];
      var cities = [];
      id = 1;
      for(var key1 in data) {

        li += "<li>";

        city = key1;

        li += "г." + city;

        punkts = data[key1];

        li += "<ul>";

          for(var punkt in punkts) {

            id_punkt = punkt;

            attrs_punkt = punkts[punkt];

            address = attrs_punkt.Адрес;

            rejimRab = attrs_punkt.Режим_работы;

            tel = attrs_punkt.Телефон;

            // Поиск координат по городу и адресу
             myGeocoder = ymaps.geocode("город "+city+",+"+address);
             myGeocoder.then(
                function (res) {
                  console.log(id);
                  coords = res.geoObjects.get(0).geometry.getCoordinates();
                     myPlacemark = new  ymaps.Placemark([coords[0], coords[1]], {
                      balloonContentHeader: '<strong>'+ 'address' +'</strong>',
                      balloonContentBody: '<em>'+ 'rejumRab'+'</em>',
                      balloonContentFooter: '<p>'+ 'tel' +'</p>'
                    });
                    x = coords[0];
                    y = coords[1];
                     $.ajax({
                      type: "PUT",
                      url: "/punkts/"+id,
                      data: {"X": x, "Y": y},
                    });
                    //console.log(coords);
                    map.geoObjects.add(myPlacemark);
                    id+=1;
                  return coords;
                });
            //

            li += "<a href='#'><div class='punkt' style='border:1px solid gray;margin-bottom:10px;padding:5px;'>";

              for(var value in attrs_punkt) {
                 
                li += "<li>"+value+" | " + attrs_punkt[value]+"</li>";
              }

              li+= "</div></a>";

          }

        li += "</li></ul><li>";

    }



    $("#punkts").append(li);
      });

      });

    });

        </script>
      </body>
    </html>