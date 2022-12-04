<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
    <style>
    body{

        background:#eee;
    }
    .gradient-brand-color {
        background-image: -webkit-linear-gradient(0deg, #376be6 0%, #6470ef 100%);
        background-image: -ms-linear-gradient(0deg, #376be6 0%, #6470ef 100%);
        color: #fff;
    }
    .contact-info__wrapper {
        overflow: hidden;
        border-radius: .625rem .625rem 0 0
    }

    @media (min-width: 1024px) {
        .contact-info__wrapper {
            border-radius: 0 .625rem .625rem 0;
            padding: 5rem !important
        }
    }
    .contact-info__list span.position-absolute {
        left: 0
    }
    .z-index-101 {
        z-index: 101;
    }
    .list-style--none {
        list-style: none;
    }
    .contact__wrapper {
        background-color: #fff;
        border-radius: 0 0 .625rem .625rem
    }

    @media (min-width: 1024px) {
        .contact__wrapper {
            border-radius: .625rem 0 .625rem .625rem
        }
    }
    @media (min-width: 1024px) {
        .contact-form__wrapper {
            padding: 5rem !important
        }
    }
    .shadow-lg, .shadow-lg--on-hover:hover {
        box-shadow: 0 1rem 3rem rgba(132,138,163,0.1) !important;
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

    ul li {
        text-align: center;
        vertical-align: middle;
    }
    ul li img{
        text-align: center;
        vertical-align: middle;
        width: 90%;
    }




    </style>
</head>

<body>
<div class="container">
    <div class="container">
        <div class="contact__wrapper shadow-lg mt-n9">
            <div class="row no-gutters">

                <div class="col-lg-12 contact-form__wrapper p-5 order-lg-1">

                    <div id="show-annonce" class="content scaffold-show" role="main">
                        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>


                        <div class="col-md-12">
                            <div class="widget widget-gallery">
                                <div class="widget-gallery-header">
                                    <h5>Image de ${annonce.author.username} : ${annonce.title} , price:${annonce.price} £</h5>

                                    <p class="text-muted m-t-3">
                                        ${annonce.description}
                                    </p>
                                </div>
                                <ul class="widget-gallery-list clearfix">
                                    <g:each in="${annonce.illustrations}" var="image">
                                        <li><a href="/illustration/show/${image.id}"><img src="${createLinkTo(dir: 'images', file: image.filename)}"
                                                             alt="Grails"
                                                             onclick="illustration(${image.id})"/></a></li>
                                    </g:each>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
