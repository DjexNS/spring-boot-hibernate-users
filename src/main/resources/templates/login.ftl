<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <meta charset="utf-8">
    <title>Login page</title>
</head>
<body>

	<a class="btn btn-primary" href="/">Home</a>

	<h1>Log in</h1>

	<p>You can use: admin@example.com / demo</p>
	<div class="container">
		<div class="row">
			<form class="container form-horizontal" role="form" action="/login" method="post">
			    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			    <div class="form-group">
			        <label class="control-label" for="email">Email address</label>
			        <input type="email" name="email" id="email" required autofocus/>
			    </div>
			    <div class="form-group">
			        <label class="control-label" for="password">Password</label>
			        <input type="password" name="password" id="password" required/>
			    </div>
			    <div class="form-group">
			        <label class="control-label" for="remember-me">Remember me</label>
			        <input type="checkbox" name="remember-me" id="remember-me"/>
			    </div>
			    <button class="btn btn-success" type="submit">Sign in</button>
			</form>
		</div>
	</div>
	<#if error.isPresent()>
		<p>The email or password you have entered is invalid, try again.</p>
	</#if>
</body>
</html>