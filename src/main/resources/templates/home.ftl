<!DOCTYPE html>
<html lang="en">
<head>
	<link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.5/css/bootstrap.min.css"
		href="@{/webjars/bootstrap/3.3.5/css/bootstrap.min.css}" rel="stylesheet" media="screen" />
	<meta charset="utf-8">
   	<title>Home page</title>
</head>
<body>
	<div class="container">
		<div class="row">
			
			    <#if !currentUser??>
			    	<a class="btn btn-primary" href="/login">Log in</a>
			    </#if>
			    
			   	<ul class="nav nav-pills nav-stacked">
			    <#if currentUser??>			    	    
					<form class="container form-horizontal" action="/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<button class="btn btn-success" type="submit">Log out</button>
					</form>
			
					 <li><a href="/user/${currentUser.id}">View myself</a></li>
			    </#if>
			    
			    <#if currentUser?? && currentUser.role == "ADMIN">
					 <li><a href="/user/create">Create a new user</a></li>
					 <li><a href="/users">View all users</a></li>
			    </#if>
			</ul>
		</div>
	</div>
</body>
</html>
