<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
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
    </style>
</head>
<body>
<div class="container">
    <div class="contact__wrapper shadow-lg mt-n9">
        <div class="row no-gutters">


            <div class="col-lg-12 contact-form__wrapper p-5 order-lg-1">
                <h3>Nouveau Utilisateur</h3>
                <form action="/user/save" method="post" class="contact-form form-validate" novalidate="novalidate">
                    <div class="row">
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="username">User name</label>
                                <input type="text" class="form-control" id="title" name="username" placeholder="Wendy" value>
                            </div>
                        </div>

                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="password">Password</label>
                                <input class="form-control" type="password" name="password" placeholder="*******" value="">
                            </div>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label for="role">Role</label>
                                <g:select name="role" from="${roles}" id="roles" optionKey="id"  class="form-control" optionValue="authority"/>
                            </div>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label for="enabled">Enabled</label>
                                <input class="form-control" type="checkbox" name="enabled" value="${true}">
                            </div>
                        </div>



                        <div class="col-sm-12 mb-3">
                            <button  class="btn btn-primary" type="submit" name="create" class="save" value="Create" id="create">Submit</button>
                        </div>

                    </div>
                </form>
            </div>
            <!-- End Contact Form Wrapper -->

        </div>
    </div>
</div>



</body>

</html>