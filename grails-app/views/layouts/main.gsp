<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Lecoincoin"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>



    <g:layoutHead/>
</head>

<body>



<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Lecoincoin</a>
        </div>
        <ul class="nav navbar-nav">
            <sec:ifLoggedIn>
                <li class="active"><a href="/">Home</a></li>
                <sec:noAccess expression="hasRole('ROLE_ADMIN')">
                    <li><a href="/annonce/index">Annonce</a></li>
                    <li><a href="/illustration/index">Illustration</a></li>
                    <li><a href="/annonce/index">Api</a></li>
                </sec:noAccess>
                <sec:noAccess expression="hasRole('ROLE_USER')">
                    <li><a href="/user/index">User Managemment</a></li>
                </sec:noAccess>
            </sec:ifLoggedIn>

        </ul>
    <ul class="nav navbar-nav navbar-right">
        <sec:ifLoggedIn>
            <li><a href="/logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <li><a href="/login/auth"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></ul>
        </sec:ifNotLoggedIn>
    </ul>
    </div>
</nav>






<g:layoutBody/>

<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
