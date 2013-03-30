package plural.sucher

class SucherController {

    def pluralService
    def translationService

    def index() {
        render(view: "index")
    }

    def search(String term){
        def plural = pluralService.pluralFrom(term)
        def translation = translationService.meaningOf(term)
        log.debug "plural found = ${plural}"
        log.debug "translation found = ${translation}"
        render(view: 'results', model: [plural:plural, translation:translation, term: term])
    }
}
