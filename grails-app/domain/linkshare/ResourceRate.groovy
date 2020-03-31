package linkshare


class ResourceRate {
    Integer score
    static belongsTo=[userRating:Users,resources:Resources]
    static constraints = {
        score(blank:false,nullable:false)
        resources nullable:true
        userRating nullable:true
    }
}
