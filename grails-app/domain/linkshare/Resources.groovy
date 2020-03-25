package linkshare

class Resources {
    String description
    Users ruser
    Topic rtopic
    Date dateCreated
    Date lastUpdated

    static constraints = {
        dateCreated nullable:true
        lastUpdated nullable:true
        description(nullable:false, blank:false)
        ruser nullable:false
        rtopic nullable:false
    }
    static mapping={
        tablePerHierarchy false
    }
}
