<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 03.04.2017
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Поиск спортивной площадки</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/searchBox.css">
    <script src="resources/js/searchBox.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        header{
            background-color: #fcfcfc;
        }


        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }



    </style>
</head>
<body>
<input id="pac-input" class="controls" type="text" placeholder="Поиск..">
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container ">
        <div class="navbar-header " >
            <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SportMap</a>
        </div>
<%--        <div class="collapse navbar-collapse navbar-right" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Выбрать город
                        <span class="caret"></span></a>

                </li>
            </ul>
        </div>--%>
    </div>
</nav>
<header>
    <div class="container-fluid" >
        <div class="row text-center">
            <h4 >Найди свою территорию спорта!</h4>
            <hr>
            <div class="container">
                <div class="btn-group ">
                    <a  class="btn " id="football" role="button">
                        <img src="resources/images/ballMiddle.png" alt="" align="middle">
                    </a>
                    <a class="btn " id="basketball">
                        <img src="resources/images/basketball.png" alt="" align="middle">
                    </a>
                    <a  class="btn " id="voleyball">
                        <img src="resources/images/volleyball.png" alt="" align="middle">
                    </a>
                </div>
            </div>
            <hr>
        </div>
    </div>
</header>
<main>


    <div class="container-fluid text-center">
        <div class="row content">
            <!--       <div class="col-sm-2  sidenav">


                      <form class="form-horizontal text-center">
                      <fieldset>


                      <legend>Поиск спортивных площадок</legend>


                      <div class="form-group" align="center">
                        <label class="col-md-5 control-label text-center" for="selectbasic" >Вид спорта</label>
                        <div class="col-md-7">
                          <select id="selectbasic" name="selectbasic" class="form-control">
                            <option value="1">Все</option>
                            <option value="2">Футбол</option>
                            <option value="3">Баскетбол</option>
                            <option value="4">Волейбол</option>
                          </select>
                        </div>
                      </div>

                      </fieldset>
                      </form>


                  </div> -->


            <div class="col-sm-12  text-center"  id ="map" >

            </div>

            <script>
                var footMarkers;
                var markerCluster;
                var basketMarkers;
                var voleyMarkers;

                var footInfo = ${footInfo};

                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map'), {
                        center: {lat: 59.93903 , lng: 30.315828},
                        zoom: 11,
                        mapTypeId: 'roadmap'
                    });

                    initAutocomplete(map);


                    var contentString = '<div id="content">'+
                        '<div id="siteNotice">'+
                        '</div>'+
                        '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
                        '<div id="bodyContent">'+
                        '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
                        'sandstone rock formation in the southern part of the '+
                        'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
                        'south west of the nearest large town, Alice Springs; 450&#160;km '+
                        '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
                        'features of the Uluru - Kata Tjuta National Park. Uluru is '+
                        'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
                        'Aboriginal people of the area. It has many springs, waterholes, '+
                        'rock caves and ancient paintings. Uluru is listed as a World '+
                        'Heritage Site.</p>'+
                        '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
                        'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
                        '(last visited June 22, 2009).</p>'+
                        '</div>'+
                        '</div>';



                    function getInfoWindowContent(index ){
                        var contentStr = '<div id="content">'+
                            '<div id="siteNotice">'+
                                '<img src="" alt="image"> ' +
                            '<h5 id="firstHeading" class="firstHeading">' + footInfo[index].namePlayground + '</h5>'+
                            '<div id="bodyContent">'+
                            '<p> </p>'+
                            '<p> <a href="${footInfo[index].link}" class="btn btn-primary" id="football" role="button">'+
                            'Перейти в группу</a> '+
                            '</p>'+
                            '</div>';
                        var image ='resources/image/.ball.png';
                        var coString = '<div>' +
                            '<img src=" ' + image +'" alt="image"> <hr>' +
                            '<h4>' + footInfo[index].namePlayground + '</h4> ' +
                            '<div class="btn-group ">' +
                            ' <a href="  ' + footInfo[index].link +'"  class="btn btn-primary" id="football" role="button" >' +
                            'Перейти в группу' + ' </a>' +
                        '</div>' +
                        '</div>';

                            return coString;
                    }
                   // alert(footInfo[index].link);
                    // Try HTML5 geolocation.
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(function(position) {
                            var pos = {
                                lat: position.coords.latitude,
                                lng: position.coords.longitude
                            };

                            /*infoWindow.setPosition(pos);
                             infoWindow.setContent('Location found.');*/
                            map.setCenter(pos);

                        }, function() {
                            handleLocationError(true, map.getCenter());
                        });


                    } else {
                        // Browser doesn't support Geolocation
                        handleLocationError(false, map.getCenter());
                    }

                    var labels = 'Футбол';
                    var imageFootball = 'resources/images/ball.png';
                    var imageBasketball = 'resources/images/basketballSm.png';
                    var imageVoleyball = 'resources/images/voleyballSm.png';
                    var infowindow;



                    // Add some markers to the map.
                    // Note: The code uses the JavaScript Array.prototype.map() method to
                    // create an array of markers based on a given "footLocations" array.
                    // The map() method here has nothing to do with the Google Maps API.
                     footMarkers = footLocations.map(function(location, i) {
                        var marker = new google.maps.Marker({
                            position: location,
                            icon: imageFootball
                        });

                        var infowindow = new google.maps.InfoWindow({
                            content: getInfoWindowContent(i)
                        });

                        marker.addListener('click', function() {
                            infowindow.open(map, marker);
                        });
                        return marker;
                    });


                     basketMarkers = basketLocation.map(function(location, i) {
                        var bmarker = new google.maps.Marker({
                            position: location,
                            icon: imageBasketball
                        });

                        infowindow = new google.maps.InfoWindow({
                            content: contentString
                        });

                        bmarker.addListener('click', function() {
                            infowindow.open(map, bmarker);
                        });
                        return bmarker;
                    });


                     voleyMarkers = voleyLocation.map(function(location, i) {
                        var vmarker = new google.maps.Marker({
                            position: location,
                            icon: imageVoleyball
                        });

                        infowindow = new google.maps.InfoWindow({
                            content: contentString
                        });

                        vmarker.addListener('click', function() {
                            infowindow.open(map, vmarker);
                        });
                        return vmarker;
                    });
                    var markers = footMarkers.concat(basketMarkers, voleyMarkers);


                    map.addListener('click', function(){
                        infowindow.close();
                    });


                    // Add a marker clusterer to manage the markers.
                     markerCluster = new MarkerClusterer(map, markers,
                           {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});


                    function handleLocationError(browserHasGeolocation, pos) {
                        var infoWindow = new google.maps.InfoWindow({map: map});
                        infoWindow.setPosition(pos);
                        infoWindow.setContent(browserHasGeolocation ?
                            'Нажмите выбрать город' :
                            'Error: Your browser doesn\'t support geolocation.');
                    }
                }
             /*   var footLocations = [
                    {lat: 55.747747, lng: 48.738082},
                    {lat: 55.749153, lng:  48.739596}
                ]*/
                var footLocations = ${footLocation};
                var basketLocation = ${basketLocation};
                var voleyLocation = ${voleyLocation};

                $(function() {
                    $('#football').click(function(event) {
                        markerCluster.clearMarkers();
                        markerCluster.addMarkers(footMarkers);
                    });
                });
                $(function() {
                    $('#basketball').click(function(event) {
                        markerCluster.clearMarkers();
                        markerCluster.addMarkers(basketMarkers);
                    });
                });

                $(function() {
                    $('#voleyball').click(function(event) {
                        markerCluster.clearMarkers();
                        markerCluster.addMarkers(voleyMarkers);
                    });
                });


            </script>
            <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
            </script>
            <script async defer
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1tr-_gVY9qwaDTDpvfgckDzV_uqekjEQ&libraries=places&callback=initMap">
            </script>

        </div>
    </div>
</main>
<footer class="container-fluid text-center">
    <p>Copyright © 2017 SportMap</p>
</footer>

</body>
</html>