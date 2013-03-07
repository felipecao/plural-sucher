package plural.sucher

class Term {

    String text

    static constraints = {
        text(minSize: 2)
    }
}
