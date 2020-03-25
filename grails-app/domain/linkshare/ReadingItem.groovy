package linkshare

class ReadingItem {
     Resources iresource
     Users iuser
     boolean isRead
    static constraints = {
        isRead(nullable:false,blank:false)
        iresource nullable:true
        iuser nullable:true
    }
}
