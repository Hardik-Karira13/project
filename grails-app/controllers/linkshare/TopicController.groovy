package linkshare

import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired

import java.beans.Visibility

class TopicController {
     @Autowired
    TopicService topicService
    def index(){
        def books=["Public","Private"]
        render(view:'dash',model:[book:books])
    }
    def saveTopic(){
        Topic l2=new Topic(name:params.nme,visibility: params.visi)
        l2.createdBy=Users.findByUserName(session.email)
        l2.save(flush:true)
        if(l2.hasErrors()){
            l2.errors.allErrors.each{println it}
        }
          Users u5=Users.findByUserName(session.email)
        Subscription s=new Subscription()
        s.user=Users.findByUserName(session.email)
        s.topic=Topic.findByCreatedBy(u5)
        s.seriousness="Serious"
        s.save(flush: true)
        if(!topicService.method1(s))
        {
            s.errors.allErrors.each{println it}
        }
        List<Topic> topics=Topic.findAllByCreatedBy(u5).name
         render(view: 'dash',model: [topic:topics])
         //render([success:true,statuscode:200,userd:Users.first().properties] as JSON)
    }
    def link(){
        Resources resource1=new Resources()
        resource1.description=params.des
        resource1.resourceUser=Users.findByUserName(session.email)
        resource1.resourceTopic=Topic.findByName(params.tpic1)
        resource1.save(flush:true)
        if(resource1.hasErrors()){
           resource1.errors.allErrors.each{
                println it
            }
        }
        LinkResources linkResource1=new LinkResources()
        linkResource1.url=params.lnk
        linkResource1.properties=resource1.properties
        linkResource1.save(flush:true)
       // flash.message="Link Created"
        render([success:true,statuscode:200,usery:Topic.first().properties] as JSON)
    }
    def doc(){
        Resources resource2=new Resources()
        resource2.description=params.des1
        resource2.resourceUser=Users.findByUserName(session.email)
        resource2.resourceTopic=Topic.findByName(params.tpic2)
        resource2.save(flush:true)
        if(resource2.hasErrors()){
            resource2.errors.allErrors.each{
                println it
            }
        }
        DocumentResources documentResource1=new DocumentResources()
        documentResource1.document=params.doc
        documentResource1.properties=resource2.properties
        documentResource1.save(flush:true)
        //flash.message="Document Created"
        render([success:true,statuscode:200,userx:Topic.first().properties] as JSON)
    }
    def posts(){
        render(view:'posts')
    }

    def topics()
    {
        render(view:'topics')
    }
    def invites()
    {
        Subscription s2=new Subscription()
          s2.user=Users.findByEmail(params.eme)
           s2.topic=Topic.findByName(params.tpic)
        s2.seriousness="Serious"
        if(s2.hasErrors()){
            s2.errors.allErrors.each{
                println it
            }
        }
        s2.save(flush:true)
        render(view: 'dash')
    }
    def logoff()
    {
        Users u=Users.findByUserName(session.email)
        u.active=false
        session.invalidate()
        redirect(controller:'users')
    }
    /*def saveRating(){
        ResourceRate resourceRate=new ResourceRate()
        resourceRate.userRating=Users.findByUserName(session.email)
        resourceRate.resources=Resources.findByResourceUser(session.email)
        resourceRate.score=1
        render([success: true,statuscode: 200] as JSON)
    }*/
    def reading(){
        ReadingItem readingItem=new ReadingItem()
        readingItem.userRead=Users.findByUserName(session.email)
        readingItem.resourceRead=Resources.findByResourceUser(session.email)
        readingItem.isRead=true
        if(readingItem.hasErrors()){
            readingItem.errors.allErrors.each{
                println it
            }
        }
        readingItem.save(flush:true)
        render([success: true,statuscode: 200] as JSON)
    }
    def deleteSubs(){
        Users u5=Users.findByUserName(session.email)
        Subscription subscription=Subscription.findByUser(u5)
        subscription?.delete(flush:true)
        render(view:'dash')
    }
}
