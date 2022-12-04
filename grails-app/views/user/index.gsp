<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: #eee;
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
    <button class="button button4"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                                     args="[entityName]"/></g:link></button>

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
                    <th scope="col">User Role</th>
                    <th scope="col">Password Expired</th>
                    <th scope="col">Account Locked</th>
                    <th scope="col">Account Expired</th>
                    <th scope="col">Enabled</th>
                    <th scope="col">Operations</th>
                </tr>
            </thread>
            <tbody>
            <g:each in="${userList}" var="usr">
                <tr>
                    <td>${usr.username}</td>
                    <g:each in="${usr.getAuthorities()}" var="rol">
                        <td>${rol.authority} </td>
                    </g:each>
                    <td>${usr.passwordExpired}</td>
                    <td>${usr.accountLocked}</td>
                    <td>${usr.accountExpired}</td>
                    <td>${usr.enabled}</td>

                    <td>
                        <g:link action="show" controller="user" id="${usr.id}">
                            <button class="btn btn-primary"><i class="fa fa-eye"></i></button>
                        </g:link>

                        <g:link class="edit" action="edit" controller="user" id="${usr.id}">
                            <button class="btn btn-info"><i class="fa fa-edit"></i></button>
                        </g:link>

                        <g:link class="delete" action="delete" controller="user" id="${usr.id}">
                            <button class="btn btn-danger"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i
                                    class="fa fa-trash"></i></button>
                        </g:link>
                    </td>

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