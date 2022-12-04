package com.mbds.grails

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured('ROLE_USER')
class AnnonceController {

    AnnonceService annonceService
    SpringSecurityService springSecurityService


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def currenLoggedIntUser = ((User)springSecurityService.getCurrentUser()).username.toString()
        respond Annonce.findAllByAuthor(User.findByUsername(currenLoggedIntUser)), model:[annonceCount: annonceService.count()]
    }

    def show(Long id) {
        respond annonceService.get(id)
    }

    def create() {
        respond new Annonce(params)
    }


    def save(Annonce annonce) {
        if (annonce == null) {
            notFound()
            return
        }

        try {
            def currenLoggedIntUser = ((User)springSecurityService.getCurrentUser()).username.toString()
            User user = User.findByUsername(currenLoggedIntUser);
            annonce.setAuthor(user)

            println(annonce.getDescription())
            println(annonce.getPrice())
            println(annonce.getActive())
            println(annonce.getTitle())
            println(annonce.getAuthor())
            annonceService.save(annonce)
        } catch (ValidationException e) {
            respond annonce.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*' { respond annonce, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond annonceService.get(id)
    }


    def update(Annonce annonce) {
        if (annonce == null) {
            notFound()
            return
        }

        try {
            annonceService.save(annonce)
        } catch (ValidationException e) {
            respond annonce.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*'{ respond annonce, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        annonceService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'annonce.label', default: 'Annonce'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'annonce.label', default: 'Annonce'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
