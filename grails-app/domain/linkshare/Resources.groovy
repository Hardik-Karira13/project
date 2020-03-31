package linkshare

class Resources {
    String description
    static belongsTo=[resourceUser:Users,resourceTopic:Topic]
    Date dateCreated
    Date lastUpdated
    static hasMany=[resourceRatings:ResourceRate]

    static constraints = {
        dateCreated nullable:true
        lastUpdated nullable:true
        description(nullable:false, blank:false)
        resourceUser nullable:false
        resourceTopic nullable:false
    }
    static mapping={
        tablePerHierarchy false
    }
}
