<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background:#eee;
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

    <div id="list-annonce" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    %{--} <f:table collection="${annonceList}"/> --}%
        <table class="table">
            <thread>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Active</th>
                    <th scope="col">Price</th>
                    <th scope="col">Author</th>
                    <th scope="col">Illustrations</th>
                    <th scope="col">Operations</th>
                </tr>
            </thread>
            <tbody>
            <g:each in="${annonceList}" var="annonce">
                <tr>
                    <td style="vertical-align: middle">${annonce.title}</td>
                    <td>${annonce.description}</td>
                    <td style="vertical-align: middle">${annonce.active}</td>
                    <td style="vertical-align: middle">${annonce.price}</td>
                    <td style="vertical-align: middle">${annonce.author.username}</td>
                    <td>
                        <g:each in="${annonce.illustrations}" var="image">
                            <img src="${createLinkTo(dir: 'images', file: image.filename)}" alt="Grails"
                                 onclick="illustration(${image.id})"/>
                        </g:each>
                    </td>

                    <td style="width: 200px;vertical-align: middle">
                        <div>


                            <g:link  action="show" controller="annonce" id="${annonce.id}">
                                <button class="btn btn-primary"><i class="fa fa-eye"></i></button>
                            </g:link>

                            <g:link class="edit" action="edit" controller="annonce" id="${annonce.id}">
                                <button class="btn btn-info"><i class="fa fa-edit"></i></button>
                            </g:link>

                            <g:link class="delete" action="delete" controller="annonce" id="${annonce.id}">
                                <button class="btn btn-danger"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i
                                        class="fa fa-trash"></i></button>
                            </g:link>
                        </div>

                    </td>

                </tr>
            </g:each>

            </tbody>
        </table>


        <div class="pagination">
            <g:paginate total="${annonceCount ?: 0}"/>
        </div>
    </div>
</div>
<script type="text/javascript">
    function illustration(id) {
        $.ajax({
            url: '${g.createLink( controller:'illustration', action:'show')}',
            param: id,
            type: 'get'
        }).success(function (data) {
            $('#offerList').html(data);
        });
    }
</script>
</body>
</html>