package linkshare


import org.springframework.beans.factory.annotation.Autowired

class TopicController {
     @Autowired
    TopicService topicService
    def index(){
        def books=["Public","Private"]
        render(view:'dash',model:[book:books])
    }
    def second(){
        Topic l2=new Topic(name:params.nme,visibility: params.visi)
        //Users.findByUserName(session.email)
        l2.createdBy=Users.findByUserName(session.email)
        l2.save(flush:true)
        Subscription s=new Subscription()
        s.user=Users.findByUserName(session.email)
        s.topic=l2
        s.seriousness="Serious"
        s.save(flush: true)
        if(!topicService.method1(s))
        {
            s.errors.allErrors.each{println it}
        }
        flash.message="Topic created and Subscribed"
        render(view:'dash')
    }
    def link(){
        Resources r=new Resources()
        r.description=params.des
        r.ruser=Users.findByUserName(session.email)
        r.rtopic=Topic.findByName(params.tpic1)
        r.save(flush:true)
        if(r.hasErrors()){
           r.errors.allErrors.each{
                println it
            }
        }
        LinkResources lr=new LinkResources()
        lr.url=params.lnk
        lr.properties=r.properties
        lr.save(flush:true)
        flash.message="Link Created"
        render(view: 'dash')
    }
    def doc(){
        Resources r1=new Resources()
        r1.description=params.des1
        r1.ruser=Users.findByUserName(session.email)
        r1.rtopic=Topic.findByName(params.tpic2)
        r1.save(flush:true)
        if(r1.hasErrors()){
            r1.errors.allErrors.each{
                println it
            }
        }
        DocumentResources dr=new DocumentResources()
        dr.document=params.doc
        dr.properties=r1.properties
        dr.save(flush:true)
        flash.message="Document Created"
        render(view: 'dash')
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
        u.active=0
        session.invalidate()
        redirect(controller:'users')
    }

    /*TopicService topicService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond topicService.list(params), model:[topicCount: topicService.count()]
    }

    def show(Long id) {
        respond topicService.get(id)
    }

    def create() {
        respond new Topic(params)
    }

    def save(Topic topic) {
        if (topic == null) {
            notFound()
            return
        }

        try {
            topicService.save(topic)
        } catch (ValidationException e) {
            respond topic.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'topic.label', default: 'Topic'), topic.id])
                redirect topic
            }
            '*' { respond topic, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond topicService.get(id)
    }

    def update(Topic topic) {
        if (topic == null) {
            notFound()
            return
        }

        try {
            topicService.save(topic)
        } catch (ValidationException e) {
            respond topic.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'topic.label', default: 'Topic'), topic.id])
                redirect topic
            }
            '*'{ respond topic, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        topicService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'topic.label', default: 'Topic'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'topic.label', default: 'Topic'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }*/
}
