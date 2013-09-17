package plural.sucher

import org.apache.http.impl.client.DefaultHttpClient
import org.apache.http.message.AbstractHttpMessage
import org.apache.http.util.EntityUtils
import org.ccil.cowan.tagsoup.Parser

class HttpService {

    String retrieveWithClass(AbstractHttpMessage method, String cssClass) {
        String httpReturn = ""
        def htmlParser = getParserFromMethod(method)

        htmlParser.'**'.find{ it.@class == cssClass}.each {
            httpReturn = it
        }

        return httpReturn.trim()
    }

    String retrieveAllWithClass(AbstractHttpMessage method, String cssClass){
        def translation = new StringBuilder()
        def htmlParser = getParserFromMethod(method)

        htmlParser.'**'.findAll{
            it.@class == cssClass && it.parent().parent().parent().parent().@class == 'result-block'
            }
                .each {
                    translation.append(it).append(", ")
                }

        if(translation.toString().contains(',')){
            return translation.toString().substring(0, translation.toString().lastIndexOf(","))
        }

        return translation.toString()
    }

    String retrieveWithTagName(AbstractHttpMessage method, String tagName) {
        def htmlParser = getParserFromMethod(method)

        return htmlParser.'**'.find{
            it.name() == tagName && it.@class == ''
        }
    }

    private def getParserFromMethod(def method){
        def client = new DefaultHttpClient()
        def response = client.execute(method)
        def entityAsString = EntityUtils.toString(response.getEntity())
        def slurper = new XmlSlurper(new Parser())
        return slurper.parseText(entityAsString)
    }


}
