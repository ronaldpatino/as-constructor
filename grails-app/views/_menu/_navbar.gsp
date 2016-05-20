<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#mainMenu">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<g:link controller="home" action="index" class="navbar-brand">
				<i class="glyphicon glyphicon-home"></i> ASIST
			</g:link>
		</div>

	
		
		<div class="collapse navbar-collapse" id="mainMenu">
			
			
			
				<ul class="nav navbar-nav ">
					<g:render template="/_menu/catalogos"/>
				</ul>
				<ul class="nav navbar-nav ">
					<g:render template="/_menu/operaciones"/>
				</ul>
				<ul class="nav navbar-nav ">
					<g:render template="/_menu/conta"/>
				</ul>
				<ul class="nav navbar-nav ">
					<g:render template="/_menu/tesoreria"/>
				</ul>
			
			
			<ul class="nav navbar-nav navbar-right">
				<g:render template="/_menu/user"/>
				
			</ul>
			
			
		</div>
		
	</div>
	
</nav>