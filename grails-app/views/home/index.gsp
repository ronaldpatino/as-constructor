<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ASIST CONSTRUCTOR</title>

	<style type="text/css">
    .carousel-inner { text-align: center; }
    .carousel .item > img { display: inline-block; }
    h2{text-align:center;}

  </style>
</head>
<body>
<div class="jumbotron">
  <div class="container">   
  		<h2>Bienvenido al sistema de</h2>
      <h2> Administración de DICOREMA</h2>
	</div>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <img src="${resource(dir: 'images', file: 'Asist.jpg')}" class="img-responsive" >
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img align=center src="${resource(dir: 'images', file: 'Asist.jpg')}" class="img-responsive" >
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	
	</div>
  </div>
</div>

</body>
</html>