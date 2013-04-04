package plural.sucher

import grails.test.mixin.TestFor
import spock.lang.Specification
import org.apache.http.client.methods.HttpPost
import org.apache.http.message.BasicNameValuePair
import org.apache.http.client.entity.UrlEncodedFormEntity
import org.apache.http.client.methods.HttpGet

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(HttpService)
class HttpServiceSpec extends Specification {

	def setup() {
	}

	def cleanup() {
	}

	def "an http POST to plural website for 'saft' returns 'der Saft - die Säfte' "() {
        setup:
            def term = "saft"
            def post = new HttpPost("http://www.curso-alemao.de/exercicios/plural_dicionario.php")
            def params = [new BasicNameValuePair("Eing_antwort", term)]
            post.entity = new UrlEncodedFormEntity(params, "UTF-8")

        when:
            def plural = service.retrieveFirstWithClass(post, 'pergunta')

        then:
            "der  Saft - die Säfte" == plural
	}

    def "an http GET to translation website for 'kellner' returns 'criado, garçom'"(){
        setup:
        def get = new HttpGet("http://pt.bab.la/dicionario/alemao-portugues/kellner")

        when:
        def translation = service.retrieveAllWithClass(get, 'result-link')

        then:
        "criado, garçom" == translation
    }

    def "an http GET to translation website for 'kellner ' generates an error"(){
        when:
        service.retrieveAllWithClass(new HttpGet("http://pt.bab.la/dicionario/alemao-portugues/kellner "), 'result-link')

        then:
        thrown(IllegalArgumentException)
    }

    def "an http GET to translation website for 'safti' returns nothing"(){
        setup:
        def get = new HttpGet("http://pt.bab.la/dicionario/alemao-portugues/safti")

        when:
        def translation = service.retrieveAllWithClass(get, 'result-link')

        then:
        "" == translation
    }
}
