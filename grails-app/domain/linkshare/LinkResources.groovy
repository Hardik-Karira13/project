package linkshare

class LinkResources extends Resources{
      String url

    static constraints = {
        url(blank:false,nullable:false)
    }
    static mapping={
        table 'Link'
    }
}
