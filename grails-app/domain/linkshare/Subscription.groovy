package linkshare

class Subscription {
    Topic topic
    Date dateCreated
    static belongsTo=[user:Users]
    String seriousness
    static constraints={
        dateCreated nullable:true
        user(blank:false,nullable:false)
        topic(blank:false,nullable:false)
        seriousness(blank:false,nullable:true)
    }

}
