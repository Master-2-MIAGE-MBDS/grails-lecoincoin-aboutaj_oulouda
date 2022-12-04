<%@ page import="com.mbds.grails.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
    body {

        background: #eee;
    }

    a {
        color: #f96332;
    }

    .m-t-5 {
        margin-top: 5px;
    }

    .card {
        background: #fff;
        margin-bottom: 30px;
        transition: .5s;
        border: 0;
        border-radius: .1875rem;
        display: inline-block;
        position: relative;
        width: 100%;
        box-shadow: none;
    }

    .card .body {
        font-size: 14px;
        color: #424242;
        padding: 20px;
        font-weight: 400;
    }

    .profile-page .profile-header {
        position: relative
    }

    .profile-page .profile-header .profile-image img {
        border-radius: 50%;
        width: 140px;
        border: 3px solid #fff;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23)
    }

    .profile-page .profile-header .social-icon a {
        margin: 0 5px
    }

    .profile-page .profile-sub-header {
        min-height: 60px;
        width: 100%
    }

    .profile-page .profile-sub-header ul.box-list {
        display: inline-table;
        table-layout: fixed;
        width: 100%;
        background: #eee
    }

    .profile-page .profile-sub-header ul.box-list li {
        border-right: 1px solid #e0e0e0;
        display: table-cell;
        list-style: none
    }

    .profile-page .profile-sub-header ul.box-list li:last-child {
        border-right: none
    }

    .profile-page .profile-sub-header ul.box-list li a {
        display: block;
        padding: 15px 0;
        color: #424242
    }
    </style>
</head>

<body>

<div class="container">
    <div class="container profile-page">
        <div class="row">
            <div class="col-xl-6 col-lg-7 col-md-12">
                <div class="card profile-header">
                    <div class="body">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="profile-image float-md-right"><img
                                        src="${createLinkTo(dir: 'images', file: illustration.filename)}"
                                        alt="Grails"
                                        onclick="illustration(${illustration.id})"/>
                                </div>
                            </div>

                            <div class="col-lg-8 col-md-8 col-12">
                                <h4 class="m-t-0 m-b-0"><strong>Show Illustration</strong></h4>

                                <p><g:link controller="annonce" action="show"
                                           id="${illustration.id}">Lien vers l'annonce</g:link>
                                    <g:each in="${User.list()}" var="user">
                                        ${user.username}
                                    </g:each></p>

                                <div>
                                    <g:link class="edit" action="edit" controller="illustration"
                                            id="${this.illustration.id}">
                                        <button class="btn btn-info"><i class="fa fa-edit"></i></button>
                                    </g:link>
                                    <br>
                                    <br>

                                    <g:form resource="${this.illustration}" method="DELETE">

                                        <g:link class="delete" action="delete" controller="illustration" >
                                            <button class="btn btn-danger"
                                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i
                                                    class="fa fa-trash"></i></button>
                                        </g:link>
                                    </g:form>
                                </div>

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
