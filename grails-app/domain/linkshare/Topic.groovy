package linkshare

class Topic {

    String name
    Users createdBy
    Date dateCreated
    Date lastUpdated
   // String visibility
    Visibility visibility
    enum Visibility{
        Private(0),Public(1)
      final int id
       private Visibility(int id){
            this.id=id
        }
    }

    static constraints={
        dateCreated nullable:true
        lastUpdated nullable:true
        name(blank:false,nullable:false)
        createdBy nullable:true
    }
    /*static mapping={
        visibility defaultValue="'Public'"
    }*/
}

