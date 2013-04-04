package plural.sucher

import org.apache.http.client.methods.HttpGet

class TranslationService {

    def httpService

    String meaningOf(String term) {
        def dictionaryWebSite = "http://pt.bab.la/dicionario/alemao-portugues/%s"
        def get = new HttpGet(String.format(dictionaryWebSite, term.trim()))

        return httpService.retrieveAllWithClass(get, 'result-link')
    }
}
