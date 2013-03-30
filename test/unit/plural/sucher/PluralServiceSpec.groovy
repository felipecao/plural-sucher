package plural.sucher



import grails.test.mixin.*
import org.junit.*
import spock.lang.Specification
import org.apache.http.message.AbstractHttpMessage

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(PluralService)
class PluralServiceSpec extends Specification {

    def httpServiceMock

    def setup() {
        httpServiceMock = mockFor(HttpService)
        service.httpService = httpServiceMock.createMock()
    }

    def cleanup() {
    }

    void "plural service returns whatever comes from httpService"() {
        setup:
        def retValue = "der  Saft - die Säfte"
        httpServiceMock.demand.retrieveFirstWithClass() {AbstractHttpMessage method, String cssClass -> retValue}

        when:
        def plural = service.pluralFrom("saft")

        then:
        retValue == plural
    }
}
