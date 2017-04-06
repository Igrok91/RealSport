<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 03.04.2017
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Выбор площадки</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;

            height: 100%;


        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        #maps{

            height: 700px;
            background: blue;

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

<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">НАРАЙОНЕ</a>
        </div>
        <div class="collapse navbar-collapse navbar-right" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Ваш Район</a></li>
                <li><a href="#">Выбрать другой район</a></li>
                <li><a href="#">Добавить площадку</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Настройки
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Оповещения</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</nav>
<header>
    <div class="container-fluid">
        <div class="row text-center">
            <h5>Выберите площадки, на которых вы будете играть, подпишитесь на них и получайте уведомления об играх или организуйте свои!</h5>
            <h4>Все просто!</h4>
            <hr>
            <div class="container">
                <div class="btn-group btn-group-justified">
                    <a href="#" class="btn btn-primary">Футбол</a>
                    <a href="#" class="btn btn-primary">Баскетбол</a>
                    <a href="#" class="btn btn-primary">Волейбол</a>
                </div>
            </div>
            <hr>
        </div>
    </div>
</header>
<main>


    <div class="container-fluid text-center">
        <div class="row content">
            <div class="col-sm-2  sidenav">


                <!--<form class="form-horizontal text-center">
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
                </form>-->


            </div>


            <div class="col-sm-8  text-center"  id ="maps" >

            </div>

        </div>
    </div>
</main>
<footer class="container-fluid text-center">
    <p>Город  Район </p>
</footer>

</body>
</html>
