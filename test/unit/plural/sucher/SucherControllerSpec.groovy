package plural.sucher

import grails.test.mixin.*
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(SucherController)
class SucherControllerSpec extends Specification {

    def pluralServiceMock

    def setup(){
        pluralServiceMock = mockFor(PluralService)
        controller.pluralService = pluralServiceMock.createMock()
    }

    def "when index action is invoked, the index view should be rendered"(){
        when:
            controller.index()

        then:
            view == '/sucher/index'
    }

    def "when searching for a term, the controller renders whatever is returned from service"(){
        setup:
            def retValue = "whatever"
            pluralServiceMock.demand.pluralFrom() {String t -> retValue}

        when:
            controller.search("a term")

        then:
            view == '/sucher/results'
            model.term == 'a term'
            model.plural == retValue
    }

}
