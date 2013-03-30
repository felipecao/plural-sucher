package plural.sucher

import org.apache.http.impl.client.DefaultHttpClient
import org.apache.http.client.methods.HttpPost
import org.apache.http.client.methods.HttpGet
import org.apache.http.util.EntityUtils
import org.ccil.cowan.tagsoup.Parser

class TranslationService {

    def dictionaryWebSite = "http://pt.bab.la/dicionario/alemao-portugues/%s"

    String meaningOf(String term) {
        String translation = ""

        def client = new DefaultHttpClient()
        def get = new HttpGet(String.format(dictionaryWebSite, term))
        def response = client.execute(get)
        def entityAsString = EntityUtils.toString(response.getEntity())
        def slurper = new XmlSlurper(new Parser())
        def htmlParser = slurper.parseText(entityAsString)

        htmlParser.'**'.findAll{ it.@class == 'muted-link'}.each {
            translation += it + ","
        }

        return translation
    }
}
