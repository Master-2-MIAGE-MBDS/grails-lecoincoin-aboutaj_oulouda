<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    .container {
        padding: 30px;
        width: 100%;
        align-items: center;
        justify-content: center;

    }

    .row {
        text-align: center;
    }

    div.gallery {
        margin: 5px;
        border: 1px solid #ccc;
        float: left;
        width: 180px;
    }

    div.gallery:hover {
        border: 1px solid #777;
    }

    div.gallery img {
        width: 100%;
        height: auto;
    }

    div.desc {
        padding: 15px;
        text-align: center;
    }

    .pagination {
        display: inline-block;

    }

    .pagination a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        border: 1px solid #ddd;

    }

    .pagination a.active {
        background-color: #000000;
        color: white;
        border: 1px solid #4CAF50;
    }

    .pagination a:hover:not(.active) {
        background-color: #ddd;
    }
    </style>

</head>


<body>
<div class="container">
    <div>
        <a href="#list-illustration" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                           default="Skip to content&hellip;"/></a>
    </div>

    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-illustration" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    %{--}  <f:table collection="${illustrationList}" />--}%


        <div class="row">
            <g:each in="${illustrationList}" var="illustration">
                <div class="gallery">

                    <a target="_blank" href="/illustration/show/${illustration.id}">
                        <img src="${createLinkTo(dir: 'images', file: illustration.filename)}" alt="Grails" width="600"
                             height="400">
                    </a>

                    <div class="desc">Lien vers l'annonce de ${illustration.annonce.author.username}</div>

                </div>
            </g:each>
        </div>

        <div class="pagination">
            <g:paginate total="${illustrationCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>