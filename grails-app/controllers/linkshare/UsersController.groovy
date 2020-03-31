package linkshare

import grails.validation.ValidationException
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.multipart.MultipartFile

import java.beans.Visibility

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
    def allUser(){
        Users u1=Users.findByUserName(session.email)
        def list=[a:1,b:u1.userName,c:u1.email,d:u1.firstName,e:u1.lastName,f:u1.active]
        render(view:'userss',model:[l:list])
    }
    def deleteUser()
    {
        Users u2=Users.findByUserName(session.email)
        u2.delete(flush: true)
        flash.error="User Record Deleted"
        render(view:'home')
    }
    def getResource(){
        List<Resources> resources2=usersService.method3()
        render(view:'home',model:[resource:resources1])
    }
    def mail(){
        render(view:'forgotPass')
    }

    def sendMail() {
        sendMail {
            to params.address
            subject params.subject
            text params.body
        }
        flash.message="Mail Sent"
        render(view:'forgotPass')
    }
}
