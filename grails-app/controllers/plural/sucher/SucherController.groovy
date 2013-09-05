package plural.sucher

import org.apache.commons.lang.StringUtils

import static org.apache.commons.lang.StringUtils.isBlank

class SucherController {

    def pluralService
    def translationService

    def index() {
        render(view: "index")
    }

    def search(String term){

        def start = System.currentTimeMillis()

        if(isBlank(term)){
            flash.message = "${message(code: 'term.mandatory')}"
            render(view: "index")
            return;
        }

        def plural = pluralService.pluralFrom(term)
        def translation = translationService.meaningOf(term)
        log.debug "plural found = ${plural}"
        log.debug "translation found = ${translation}"
        render(view: 'results', model: [plural:plural, translation:translation, term: term, timeSpent: (System.currentTimeMillis() - start)])
    }
}
