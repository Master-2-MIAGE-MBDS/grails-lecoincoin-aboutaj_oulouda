<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    .container {
        padding: 30px;
        width: 100%;
    }

    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }

    .button4 {
        background-color: white;
        color: black;
        border: 2px solid #e7e7e7;
    }
    </style>

</head>

<body>
<div class="container">
    <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="createadmin"><g:message code="default.new.label"
                                                                       args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-user" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    %{--} <f:table collection="${userList}" />--}%
        <table class="table">
            <thread>
                <tr>
                    <th scope="col">User name</th>
                    <th scope="col">Password Expired</th>
                    <th scope="col">Account Locked</th>
                    <th scope="col">Account Expired</th>
                    <th scope="col">Enabled</th>
                </tr>
            </thread>
            <tbody>
            <g:each in="${userList}" var="usr">
                <tr>
                    <td>${usr.username}</td>
                    <td>${usr.passwordExpired}</td>
                    <td>${usr.accountLocked}</td>
                    <td>${usr.accountExpired}</td>
                    <td>${usr.enabled}</td>
                </tr>
            </g:each>

            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${userCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>