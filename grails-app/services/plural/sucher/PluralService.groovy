package plural.sucher

import org.apache.http.impl.client.DefaultHttpClient
import org.apache.http.client.methods.HttpPost
import org.apache.http.message.BasicNameValuePair
import org.apache.http.client.entity.UrlEncodedFormEntity
import org.apache.http.HttpEntity
import org.apache.http.util.EntityUtils
import org.ccil.cowan.tagsoup.Parser

/**
 * Code copied from http://www.frommknecht.net/2010/02/robust-html-parsing-the-groovy-way/
 */
class PluralService {

    String pluralWebSite = "http://www.curso-alemao.de/exercicios/plural_dicionario.php"

    String pluralFrom(String term) {
        String plural = ""

        def client = new DefaultHttpClient()
        def post = new HttpPost(pluralWebSite)
        def params = [new BasicNameValuePair("Eing_antwort", term)]

        post.entity = new UrlEncodedFormEntity(params, "UTF-8")

        def response = client.execute(post)
        def entityAsString = EntityUtils.toString(response.getEntity())
        def slurper = new XmlSlurper(new Parser())
        def htmlParser = slurper.parseText(entityAsString)

        htmlParser.'**'.find{ it.@class == 'pergunta'}.each {
            plural = it
        }

        return plural.trim()
    }
}
