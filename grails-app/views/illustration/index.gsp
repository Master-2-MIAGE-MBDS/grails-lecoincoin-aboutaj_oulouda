<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <style>
    body {
        background: #eee;
    }

    /* ===========
       Gallery
     =============*/
    .portfolioFilter a {
        -moz-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
        -moz-transition: all 0.3s ease-out;
        -ms-transition: all 0.3s ease-out;
        -o-transition: all 0.3s ease-out;
        -webkit-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
        -webkit-transition: all 0.3s ease-out;
        box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
        color: #333333;
        padding: 5px 10px;
        display: inline-block;
        transition: all 0.3s ease-out;
    }

    .portfolioFilter a:hover {
        background-color: #228bdf;
        color: #ffffff;
    }

    .portfolioFilter a.current {
        background-color: #228bdf;
        color: #ffffff;
    }

    .thumb {
        background-color: #ffffff;
        border-radius: 3px;
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.1);
        margin-top: 30px;
        padding-bottom: 10px;
        padding-left: 10px;
        padding-right: 10px;
        padding-top: 10px;
        width: 100%;
    }

    .thumb-img {
        border-radius: 2px;
        overflow: hidden;
        width: 100%;
    }

    .gal-detail h4 {
        margin: 16px auto 10px auto;
        width: 80%;
        white-space: nowrap;
        display: block;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .gal-detail .ga-border {
        height: 3px;
        width: 40px;
        background-color: #228bdf;
        margin: 10px auto;
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
    %{--}  <f:table collection="${illustrationList}" />--}%

    <div class="portfolioContainer">
        <g:each in="${illustrationList}" var="illustration">
            <div class="col-sm-6 col-lg-3 col-md-4 webdesign illustrator">
                <div class="gal-detail thumb">
                    <a href="/illustration/show/${illustration.id}" class="image-popup" title="Screenshot-1">
                        <img src="${createLinkTo(dir: 'images', file: illustration.filename)}" class="thumb-img"
                             alt="work-thumbnail">
                    </a>
                    <h4 class="text-center">${illustration.annonce.author.username}</h4>

                </div>
            </div>
        </g:each>
    </div>

    <div class="row">
        <div class="pagination">
            <g:paginate total="${illustrationCount ?: 0}"/>
        </div>
    </div></div>
</div>
</body>
</html>