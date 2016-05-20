<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Papel ERP</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-favicon.png">
    <link href="libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css">
    <link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="libs/jquery.scrollbar/jquery.scrollbar.css" rel="stylesheet">
    <link href="libs/ionrangeslider/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="libs/ionrangeslider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="libs/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css" rel="stylesheet">
    <link href="libs/morris.js/morris.css" rel="stylesheet">
    <link href="libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="css/right.dark.css" rel="stylesheet" class="demo__css">
    <link href="css/demo.css" rel="stylesheet"><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body class="framed main-scrollable">
    <div class="wrapper">
      <nav class="navbar navbar-static-top header-navbar">
        <div class="header-navbar-mobile"><!--mobil-->
          <div class="header-navbar-mobile__menu">
            <button type="button" class="btn"><i class="fa fa-bars"></i></button>
          </div>
          <div class="header-navbar-mobile__title"><span>Principal</span></div> <!--Encabezado Responsive-->
          <div class="header-navbar-mobile__settings dropdown"><a href="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="btn dropdown-toggle"><i class="fa fa-power-off"></i></a><!--Menu salir Responsive-->
            <ul class="dropdown-menu dropdown-menu-right">
              <li><a href="#">Salir</a></li>
            </ul>
          </div><!--Menu Salir Responsive-->
        </div><!--mobil-->
        <div class="navbar-header"><a href="index.html" class="navbar-brand"><!--Logo-->
            <div class="logo text-nowrap">
              <div class="logo__img"><i class="fa fa-chevron-right"></i></div><span class="logo__text">Papel</span>
            </div></a></div><!--Logo-->
        <div class="topnavbar"><!--Barra de navegacion estandar-->
          <ul class="nav navbar-nav navbar-left">
            <li class="active"><a href="index.html"><span>Principal</span></a></li>
            <li><a href="inbox.html"><span>Quejas</span></a></li>
            <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><span>Reclamaciones&nbsp;<i class="caret"></i></span></a>
              <ul class="dropdown-menu">
                <li><a href="products.html"><span>Quejas</span></a></li>
                <li><a href="orders.html"><span>Reclamaciones</span></a></li>
                <li><a href="users.html"><span>Users</span></a></li>
                <li role="separator" class="divider"></li>
                <li><a href="login.html">Login</a></li>
                <li><a href="blank.html">Blank</a></li>
              </ul>
            </li>
          </ul>
          <ul class="userbar nav navbar-nav">
            <li class="dropdown"><a href="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="userbar__settings dropdown-toggle"><i class="fa fa-power-off"></i></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li><a href="#">Salir</a></li>
              </ul>
            </li>
          </ul>
        </div><!--Barra de navegacion estandar-->
      </nav>

      <div class="dashboard">

        <div class="sidebar">
          <div class="quickmenu"><!-- Quick Menu iconos-->
            <div class="quickmenu__cont">
              <div class="quickmenu__list">
                <a href="products.html"><div class="quickmenu__item active">
                  <div class="fa fa-fw fa-home"></div>
                </div></a>
                <div class="quickmenu__item">
                  <div class="fa fa-fw fa-envelope-o"></div>
                </div>
                <div class="quickmenu__item new">
                  <div class="fa fa-fw fa-comments-o"></div>
                </div>
                <div class="quickmenu__item">
                  <div class="fa fa-fw fa-feed"></div>
                </div>
                <div class="quickmenu__item">
                  <div class="fa fa-fw fa-cog"></div>
                </div>
              </div>
            </div>
          </div><!--Quick Menu iconos-->

          <div class="scrollable scrollbar-macosx">
            <div class="sidebar__cont">



        <div class="sidebar__menu">
                <div class="sidebar__title">Seguimiento Calidad</div>
                <ul class="nav nav-menu">
                  <li><a href="./">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-star"></i></div>
                      <div class="nav-menu__text"><span>Principal</span></div></a></li>
                  <li ><a href="products.html">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-cube"></i></div>
                      <div class="nav-menu__text"><span>Quejas</span></div></a></li>

                  <li class="active"><a href="products.html">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-cube"></i></div>
                      <div class="nav-menu__text"><span>Reclamaciones</span></div></a></li>
                 <!-- <li><a href="#">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-envelope"></i></div>
                      <div class="nav-menu__text"><span>Mailbox</span></div>
                      <div class="nav-menu__right"><i class="fa fa-fw fa-angle-right arrow"></i></div></a>
                    <ul class="nav nav-menu__second collapse">
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="sent.html">Sent</a></li>
                      <li><a href="compose.html">Compose</a></li>
                    </ul>
                  </li>
                  <li><a href="orders.html">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-truck"></i></div>
                      <div class="nav-menu__text"><span>Orders</span></div>
                      <div class="nav-menu__right"><i class="badge badge-default">2</i></div></a></li>
                  <li><a href="users.html">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-user"></i></div>
                      <div class="nav-menu__text"><span>Users</span></div></a></li>
                  <li><a href="#">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-folder-o"></i></div>
                      <div class="nav-menu__text"><span>Other</span></div>
                      <div class="nav-menu__right"><i class="fa fa-fw fa-angle-right arrow"></i></div></a>
                    <ul class="nav nav-menu__second collapse">
                      <li><a href="blank.html">Blank</a></li>
                      <li><a href="login.html">Login</a></li>
                    </ul>
                  </li>
                </ul>
                
                <div class="sidebar__title">Template</div>
                <ul class="nav nav-menu">
                  <li><a href="#">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-th-large"></i></div>
                      <div class="nav-menu__text"><span>UI Elements</span></div>
                      <div class="nav-menu__right"><i class="fa fa-fw fa-angle-right arrow"></i></div></a>
                   
                  </li>
                  <li><a href="#">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-clone"></i></div>
                      <div class="nav-menu__text"><span>Forms</span></div>
                      <div class="nav-menu__right"><i class="fa fa-fw fa-angle-right arrow"></i></div></a>
                   
                  </li>
                  <li><a href="#">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-table"></i></div>
                      <div class="nav-menu__text"><span>Tables</span></div>
                      <div class="nav-menu__right"><i class="fa fa-fw fa-angle-right arrow"></i></div></a>
                   
                  </li>
                  <li><a href="charts.html">
                      <div class="nav-menu__ico"><i class="fa fa-fw fa-pie-chart"></i></div>
                      <div class="nav-menu__text"><span>Charts</span></div></a>
                  </li>
                </ul>
        </div>
            -->

    <g:layoutBody/>

    <g:render template="/_menu/footer"/>
            
          </div>
        </div>




      </div>
      
      
      





    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
    <script src="libs/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="libs/bootstrap-tabdrop/bootstrap-tabdrop.min.js"></script>
    <script src="libs/sparkline/jquery.sparkline.min.js"></script>
    <script src="libs/ionrangeslider/js/ion.rangeSlider.min.js"></script>
    <script src="libs/inputNumber/js/inputNumber.js"></script>
    <script src="libs/bootstrap-switch/dist/js/bootstrap-switch.min.js"></script>
    <script src="libs/raphael/raphael-min.js"></script>
    <script src="libs/morris.js/morris.min.js"></script>
    <script src="libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="js/template/index.js"></script>
    <script src="js/main.js"></script>
    <script src="js/demo.js"></script>
  </body>
</html>