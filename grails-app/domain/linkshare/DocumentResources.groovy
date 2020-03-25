package linkshare

class DocumentResources extends Resources{
     String document
    static constraints = {
        document nullable:false
    }
    static mapping={
        table 'Doc'
    }
}
