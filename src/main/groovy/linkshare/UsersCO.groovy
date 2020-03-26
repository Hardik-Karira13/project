package linkshare

class UsersCO implements grails.validation.Validateable{
    String firstName
    String lastName
    String email
    String userName
    String password
     byte[] photo

    static constraints = {
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
        userName(unique: true, blank: false)
        email(unique: true, email: true)
        photo(blank: true, nullable: true, maxSize: 1073741824)
        password(size: 5..15, blank: false)
    }
}
