package linkshare

class Subscription {
    Topic topic
    Users user
    Date dateCreated
    //Date lastUpdated
    String seriousness
    static constraints={
        dateCreated nullable:true
        user(blank:false,nullable:false)
        topic(blank:false,nullable:false)
        seriousness(blank:false,nullable:true)
    }

  /*  static mapping={
        seriousness defaultValue:"'Serious'"
    }*/
}
