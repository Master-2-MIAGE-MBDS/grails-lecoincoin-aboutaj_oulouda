<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
<g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
<title><g:message code="default.edit.label" args="[entityName]"/></title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
<style>
body {

    background: #eee;
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
    box-shadow: 0 1rem 3rem rgba(132, 138, 163, 0.1) !important;
}
</style>
</head>

<body>
<div class="container">
    <div class="contact__wrapper shadow-lg mt-n9">
        <div class="row no-gutters">
            <div class="col-lg-12 contact-form__wrapper p-5 order-lg-1">
                <h3>Edit Annonce</h3>
                <g:form resource="${this.annonce}" method="PUT">
                    <g:hiddenField name="version" value="${this.annonce?.version}"/>
                    <div class="row">
                        <input type="hidden" name="version" value="2" id="version">
                        <fieldset class="form">
                            <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label class="required-field" for="title">Title</label>
                                    <input type="text" class="form-control" id="title" name="title"
                                           value="${this.annonce.title}">
                                </div>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label class="required-field" for="price">Price</label>
                                    <input class="form-control" type="number" name="price" required=""
                                           min="0" id="price" value="${this.annonce.price}">
                                </div>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <div class="form-group">
                                    <label for="active">Activated</label>
                                    <input type="checkbox" name="active" id="active" checked="${this.annonce.active}">
                                </div>
                            </div>


                            <div class="col-sm-12 mb-3">
                                <div class="form-group">
                                    <label class="required-field" for="description">Description</label>
                                    <textarea class="form-control" id="description" name="description"
                                              rows="4">${this.annonce.description}</textarea>
                                </div>
                            </div>


                        </fieldset>
                        <fieldset class="buttons">
                            <div class="col-sm-12 mb-3">
                                <button  class="btn btn-primary" type="submit" value="Update">Submit</button>
                            </div>
                        </fieldset>
                    </div>
                </g:form>
            </div>
        </div>
    </div></div></body>
</body>
</html>