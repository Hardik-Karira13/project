package linkshare

import grails.validation.ValidationException
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.multipart.MultipartFile

import static org.springframework.http.HttpStatus.*

class UsersController {
     @Autowired
     UsersService usersService
    def index(){
        render(view:'home')
    }
    def register(UsersCO usersCO){
         //MultipartFile myFile=params.phto
         //File file=new File("/home/images/${myFile.originalFilename}")
        usersCO.firstName=params.fname
        usersCO.lastName=params.lname
        usersCO.email=params.emil
        usersCO.userName=params.uname
        usersCO.password=params.psw1
        usersCO.photo=params.phto.bytes
        if(usersCO.hasErrors()){
            usersCO.errors.allErrors.each{
                println it
            }
        }
        Users f=new Users()
        f.properties=usersService.method2(usersCO)
        f.save(flush:true)
        if(f.hasErrors())
        {
         f.errors.allErrors.each{println it}
        }
        flash.message="Successfully Registered"
        render(view:'home')
    }
    def login() {
        Users l1 = Users.findByUserName(params.email)
        if (l1) {
            String ps = l1.password
            if (ps == params.psw) {
                session.email = params.email
                flash.success = session.email
                l1.active=1
                redirect(controller: 'topic', action: 'index')
            } else {
                flash.error = "Invalid password"
                render(view: 'home')
            }
        }
        else {
            flash.error = "Invalid user"
            render(view: 'home')
        }
    }
    def fetchImage(){
        //Users f2=Users.findByUserName(session.email)
        File file=new File("/home/images/person.jpeg")
        byte[] imageInByte = file.getBytes()
        response.contentType = 'image/jpeg' // or the appropriate image content type
        response.contentLength = imageInByte.length
        response.outputStream << imageInByte

    }
    def abc(){
        Users u1=Users.findByUserName(session.email)
        def list=[a:1,b:u1.userName,c:u1.email,d:u1.firstName,e:u1.lastName,f:u1.active]
        render(view:'userss',model:[l:list])
    }
    def pqr()
    {
        Users u2=Users.findByUserName(session.email)
        u2.delete(flush: true)
        flash.error="User Record Deleted"
        render(view:'home')
    }

   /* UsersService usersService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond usersService.list(params), model:[usersCount: usersService.count()]
    }

    def show(Long id) {
        respond usersService.get(id)
    }

    def create() {
        respond new Users(params)
    }

    def save(Users users) {
        if (users == null) {
            notFound()
            return
        }

        try {
            usersService.save(users)
        } catch (ValidationException e) {
            respond users.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'users.label', default: 'Users'), users.id])
                redirect users
            }
            '*' { respond users, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond usersService.get(id)
    }

    def update(Users users) {
        if (users == null) {
            notFound()
            return
        }

        try {
            usersService.save(users)
        } catch (ValidationException e) {
            respond users.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'users.label', default: 'Users'), users.id])
                redirect users
            }
            '*'{ respond users, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        usersService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'users.label', default: 'Users'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'users.label', default: 'Users'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }*/
}
