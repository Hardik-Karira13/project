package linkshare


class ResourceRate {
     Resources resources
    Users tuser
    Integer score
    static constraints = {
        score(blank:false,nullable:false)
        resources nullable:true
        tuser nullable:true
    }

}
