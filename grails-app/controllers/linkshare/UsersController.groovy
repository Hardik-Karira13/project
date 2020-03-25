package linkshare

import grails.validation.ValidationException
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.multipart.MultipartFile

import static org.springframework.http.HttpStatus.*

class UsersController {
    // @Autowired
    //UsersService usersService
    def index(){
        render(view:'home')
    }
    def register(){
         //session.phto=params.phto
        Users f=new Users(firstName:params.fname,lastName:params.lname,email:params.emil,userName:params.uname,password:params.psw1,photo:params.phto.bytes)
        session.phto=params.phto
        // MultipartFile myFile=params.phto
       // File file=new File("/home/images/${myFile.originalFilename}")
        //f.properties['phto']=params.phto
        //println FirstCO.validate()
        //First f=new First()
        //f.properties=firstCO.properties
        f.save(flush:true)
        flash.message="Successfully Registered"
        render(view:'home')
    }
    def login() {
        Users l1 = Users.findByUserName(params.email)
        session.email = params.email
        if (l1) {
            String ps = l1.password
            if (ps == params.psw) {
                flash.success = params.email
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
        File file=new File(session.phto)
        byte[] imageInByte = file.getBytes()
        response.contentType = 'image/jpeg' // or the appropriate image content type
        response.contentLength = imageInByte.length
        response.outputStream << imageInByte

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
