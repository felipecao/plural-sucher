package plural.sucher

import grails.test.mixin.TestFor
import spock.lang.Specification
import org.apache.http.message.AbstractHttpMessage

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(TranslationService)
class TranslationServiceSpec extends Specification {

    def httpServiceMock

	def setup() {
        httpServiceMock = mockFor(HttpService)
        service.httpService = httpServiceMock.createMock()
	}

	def cleanup() {
	}

	void "translation service returns whatever comes from httpService"() {
        setup:
            def expectedReturn = "garcom, criado (m.)"
            httpServiceMock.demand.retrieveAllWithClass() {AbstractHttpMessage method, String cssClass -> "garcom, criado"}
            httpServiceMock.demand.retrieveWithTagName() {AbstractHttpMessage method, String tagName -> "m."}

        when:
            def translation = service.meaningOf("kellner")

        then:
            expectedReturn == translation
	}
}
