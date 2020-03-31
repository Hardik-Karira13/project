package linkshare

class ReadingItem {
     Resources resourceRead
     Users userRead
     boolean isRead
    static constraints = {
        isRead(nullable:false,blank:false)
        resourceRead nullable:true
        userRead nullable:true
    }
}
