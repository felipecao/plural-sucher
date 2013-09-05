package plural.sucher

import org.apache.http.client.entity.UrlEncodedFormEntity
import org.apache.http.client.methods.HttpPost
import org.apache.http.message.BasicNameValuePair

/**
 * Code copied from http://www.frommknecht.net/2010/02/robust-html-parsing-the-groovy-way/
 */
class PluralService {

    def httpService

    String pluralFrom(String term) {
        def post = new HttpPost("http://www.curso-alemao.de/exercicios/plural_dicionario.php")
        def params = [new BasicNameValuePair("Eing_antwort", term.trim())]

        post.entity = new UrlEncodedFormEntity(params, "UTF-8")
        return httpService.retrieveWithClass(post, "pergunta")
    }
}
