<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>

    <style>
    body {
        background: #eee;
        margin-top: 20px;
    }

    .container {
        padding: 30px;
        width: 100%;

    }

    .widget {
        border: none;
        box-shadow: 0 2px 0 rgba(0, 0, 0, .07);
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        margin-bottom: 20px;
        position: relative;
        background: #fff;
        padding: 20px;
        display: block;
    }

    .widget-gallery-header {
        margin: -20px -20px 0;
        padding: 20px;
        border-radius: 5px 5px 0 0;
    }

    .widget-gallery-list {
        list-style-type: none;
        margin: -5px -20px -20px;
        padding: 3px 0 0 3px;
    }

    .widget-gallery-list > li {
        width: 25%;
        position: relative;
        padding-top: 25%;
        overflow: hidden;
        float: left;
    }

    .widget-gallery-list > li a {
        background: #EAEDEF;
        color: #aab3ba;
        text-decoration: none;
    }

    .widget-gallery-list > li img {
        position: absolute;
        right: 3px;
        bottom: 3px;
        max-height: 100%;
    }

    .widget-gallery-header p {
        font-size: 12px;
    }

    .widget-gallery-header h5, .widget-gallery-header p {
        margin: 0;
    }

    .text-muted {
        color: #aab3ba;
    }

    .m-t-3 {
        margin-top: 3px !important;
    }

    .widget-gallery-list > li a:before {
        content: '';
        position: absolute;
        top: 50%;
        right: 50%;
        bottom: 50%;
        left: 50%;
        transition: all .2s ease-in-out;
        background: 0 0;
        z-index: 1020;
        border-radius: 50%;
    }

    .widget-gallery-list > li:hover a:before {
        content: '';
        left: 0;
        right: 3px;
        top: 0;
        bottom: 3px;
        background: rgba(0, 0, 0, .3);
        border-radius: 0;
    }




    </style>
</head>

<body>
<div class="container">
    <a href="#show-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>
    <div class="row">

    <div id="show-annonce" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>


        <div class="col-md-6">
            <div class="widget widget-gallery">
                <div class="widget-gallery-header">
                    <h5>Image de ${annonce.author.username} : ${annonce.title} , price:${annonce.price} £</h5>

                    <p class="text-muted m-t-3">
                        ${annonce.description}
                    </p>
                </div>
                <ul class="widget-gallery-list clearfix">
                    <g:each in="${annonce.illustrations}" var="image">
                        <li><a href="#"><img src="${createLinkTo(dir: 'images', file: image.filename)}" alt="Grails"
                                             onclick="illustration(${image.id})"/></a></li>
                    </g:each>

                </ul>
            </div>
        </div>
    </div>



    </div>
</div>
</body>
</html>
