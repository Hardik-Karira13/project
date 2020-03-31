package linkshare

class Topic {

    String name
  //  Users createdBy
    static hasMany=[resources:Resources]
    static belongsTo=[createdBy:Users]
    Date dateCreated
    Date lastUpdated
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
        name(unique:true,blank:false,nullable:false)
        createdBy nullable:true
    }
}


