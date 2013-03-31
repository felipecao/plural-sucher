package plural.sucher

import grails.test.mixin.*
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(SucherController)
class SucherControllerSpec extends Specification {

    def pluralServiceMock
    def translationServiceMock

    def setup(){
        pluralServiceMock = mockFor(PluralService)
        translationServiceMock = mockFor(TranslationService)

        controller.pluralService = pluralServiceMock.createMock()
        controller.translationService = translationServiceMock.createMock()
    }

    def "when index action is invoked, the index view should be rendered"(){
        when:
            controller.index()

        then:
            view == '/sucher/index'
    }

    def "when searching for a term, the controller renders whatever is returned from service"(){
        setup:
            def retValuePlural = "whatever"
            def retValueMeaning = "whatever"
            pluralServiceMock.demand.pluralFrom() {String t -> retValuePlural}
            translationServiceMock.demand.meaningOf() {String t -> retValueMeaning}

        when:
            controller.search("a term")

        then:
            view == '/sucher/results'
            model.term == 'a term'
            model.plural == retValuePlural
            model.translation == retValueMeaning
    }



    def "when searching for a term, if nothing is informed, a message comes up"(){
        when:
            controller.search("   ")

        then:
            view == '/sucher/index'
            flash.message == 'term.mandatory'
    }

}
