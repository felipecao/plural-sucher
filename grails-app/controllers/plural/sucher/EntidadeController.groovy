package plural.sucher

import org.springframework.dao.DataIntegrityViolationException

class EntidadeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [entidadeInstanceList: Entidade.list(params), entidadeInstanceTotal: Entidade.count()]
    }

    def create() {
        [entidadeInstance: new Entidade(params)]
    }

    def save() {
        def entidadeInstance = new Entidade(params)
        if (!entidadeInstance.save(flush: true)) {
            render(view: "create", model: [entidadeInstance: entidadeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'entidade.label', default: 'Entidade'), entidadeInstance.id])
        redirect(action: "show", id: entidadeInstance.id)
    }

    def show(Long id) {
        def entidadeInstance = Entidade.get(id)
        if (!entidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "list")
            return
        }

        [entidadeInstance: entidadeInstance]
    }

    def edit(Long id) {
        def entidadeInstance = Entidade.get(id)
        if (!entidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "list")
            return
        }

        [entidadeInstance: entidadeInstance]
    }

    def update(Long id, Long version) {
        def entidadeInstance = Entidade.get(id)
        if (!entidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (entidadeInstance.version > version) {
                entidadeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'entidade.label', default: 'Entidade')] as Object[],
                        "Another user has updated this Entidade while you were editing")
                render(view: "edit", model: [entidadeInstance: entidadeInstance])
                return
            }
        }

        entidadeInstance.properties = params

        if (!entidadeInstance.save(flush: true)) {
            render(view: "edit", model: [entidadeInstance: entidadeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'entidade.label', default: 'Entidade'), entidadeInstance.id])
        redirect(action: "show", id: entidadeInstance.id)
    }

    def delete(Long id) {
        def entidadeInstance = Entidade.get(id)
        if (!entidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "list")
            return
        }

        try {
            entidadeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'entidade.label', default: 'Entidade'), id])
            redirect(action: "show", id: id)
        }
    }
}
