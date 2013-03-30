package plural.sucher

import org.apache.http.impl.client.DefaultHttpClient
import org.apache.http.client.methods.HttpPost
import org.apache.http.client.methods.HttpGet
import org.apache.http.util.EntityUtils
import org.ccil.cowan.tagsoup.Parser

class TranslationService {

    def httpService

    String meaningOf(String term) {
        def dictionaryWebSite = "http://pt.bab.la/dicionario/alemao-portugues/%s"
        def get = new HttpGet(String.format(dictionaryWebSite, term))

        return httpService.retrieveAllWithClass(get, 'result-link')
    }
}
