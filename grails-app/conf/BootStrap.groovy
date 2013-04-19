import plural.sucher.Entidade

class BootStrap {

    def init = { servletContext ->
        (1..100).each{
            def entidade = new Entidade()

            (1..40).each {
                entidade."atrib${it}" = "VALOR ${it}"
            }

            entidade.save()
        }
    }
    def destroy = {
    }
}
