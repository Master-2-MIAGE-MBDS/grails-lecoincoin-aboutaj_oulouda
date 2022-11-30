<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
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
                <h3>New Annonce</h3>
                <form action="/annonce/save" method="post" class="contact-form form-validate" novalidate="novalidate">
                    <div class="row">
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="title">Title</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="Wendy" value>
                            </div>
                        </div>

                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="price">Price</label>
                                <input class="form-control" type="number decimal" name="price" value="" required="" step="0.01" min="0.0" id="price">
                            </div>
                        </div>

                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label for="active">Activated</label>
                                <input type="checkbox" name="active" id="active">
                            </div>
                        </div>



                        <div class="col-sm-12 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="description">Description</label>
                                <textarea class="form-control" id="description" name="description"  value rows="4" placeholder="Annonce Description....."></textarea>
                            </div>
                        </div>

                        <label for="author">Author
                            <span class="required-indicator">*</span>
                        </label><select name="author.id" required="" id="author">
                        <option value="1">User(username:admin)</option>
                        <option value="2">User(username:Alice)</option>
                        <option value="3">User(username:Bob)</option>
                        <option value="4">User(username:Charly)</option>
                        <option value="5">User(username:Denis)</option>
                        <option value="6">User(username:Etienne)</option>
                    </select>

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


 <!--<form action="/annonce/save" method="post">
    <fieldset class="form">
        <div class="fieldcontain required">
            <label for="title">Title
                <span class="required-indicator">*</span>
            </label><input type="text" name="title" value="" required="" maxlength="100" id="title">
        </div><div class="fieldcontain required">
        <label for="description">Description
            <span class="required-indicator">*</span>
        </label><input type="text" name="description" value="" required="" id="description">
    </div><div class="fieldcontain required">
        <label for="price">Price
            <span class="required-indicator">*</span>
        </label><input type="number decimal" name="price" value="" required="" step="0.01" min="0.0" id="price">
    </div><div class="fieldcontain">
        <label for="active">Active</label><input type="hidden" name="_active"><input type="checkbox" name="active" id="active">
    </div><div class="fieldcontain">
        <label for="illustrations">Illustrations</label><ul></ul><a href="/illustration/create?annonce.id=">Add Illustration</a>
    </div><div class="fieldcontain required">
        <label for="author">Author
            <span class="required-indicator">*</span>
        </label><select name="author.id" required="" id="author">
            <option value="1">User(username:admin)</option>
            <option value="2">User(username:Alice)</option>
            <option value="3">User(username:Bob)</option>
            <option value="4">User(username:Charly)</option>
            <option value="5">User(username:Denis)</option>
            <option value="6">User(username:Etienne)</option>
        </select>
    </div>
    </fieldset>
    <fieldset class="buttons">
        <input type="submit" name="create" class="save" value="Create" id="create">
    </fieldset>
</form> -->