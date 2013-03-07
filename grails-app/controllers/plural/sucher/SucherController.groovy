package plural.sucher

class SucherController {

    def pluralService

    def index() {
        render(view: "index")
    }

    def search(String term){
        def plural = pluralService.pluralFrom(term)
        log.debug "plural encontrado = ${plural}"
        render(view: 'results', model: [plural:plural, term: term])
    }
}
