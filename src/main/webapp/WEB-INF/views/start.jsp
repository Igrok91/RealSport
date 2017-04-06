<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 31.03.2017
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<header class="text-center">
    <h1> Real Sport</h1>
</header>
<main>
    <div class="container-fluid text-right"  >
        <div class="row">
            <div class="col-xs-offset-2 col-xs-8 col-xs-offset-2 main">
                <form class="form-horizontal">
                    <fieldset>

                        <!-- Form Name -->
                        <legend align="center">Начинаем!  </legend>
                        <!-- Select Basic -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="selectbasic">Город</label>
                            <div class="col-md-4">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                    <option value="1">Санкт-Петербург</option>
                                    <option value="2">Ленинградская область</option>
                                </select>
                            </div>
                        </div>

                        <!-- Select Basic -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="selectbasic">Ваш Район</label>
                            <div class="col-md-4">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                    <option value="1">Василеостровский</option>
                                </select>
                            </div>
                        </div>
                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="singlebutton"></label>
                            <div class="col-md-4">
                                <a href="#" class="btn btn-lg btn-primary">Далее <span class="glyphicon glyphicon-chevron-right"></span></a>
                            </div>
                        </div>



                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</main>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</body>
</html>
