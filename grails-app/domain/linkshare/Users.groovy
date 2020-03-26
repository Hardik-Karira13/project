package linkshare

import org.springframework.web.multipart.MultipartFile

class Users {
    String firstName
    String lastName
    String email
    String userName
    String password
    String confirmPassword
    byte[] photo
    Date dateCreated
    Date lastUpdated
    boolean active
    boolean admin
    static transients = ['confirmPassword','active','admin']


    static constraints = {
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        userName(unique: true, blank: false)
        email(unique: true, email: true)
         photo(blank: true, nullable: true, maxSize: 1073741824)
        dateCreated nullable:true
        lastUpdated nullable:true
         password(size: 5..15, blank: false)
        confirmPassword(bindable: true, nullable: true, blank: true,validator: { val, obj ->
            if (obj.password == val) {
                return true
                println "credendial matches"
            }
        })
        active(blank: false, nullable: true)
        admin nullable: true
    }
    static mapping = {
        lastName column: 'LNAME'
        photo column:'photo'
    }
}
