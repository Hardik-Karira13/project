package linkshare

import grails.gorm.services.Service

class TopicService{

       def method1(obj)
      {
          if(obj.hasErrors())
          {
              //obj.errors.allErrors{println it}
              return false
          }
          else{
              return true
          }

      }
    /*def method2(){
        List<Subscription> subscriptionList=Subscription.createCriteria().list{
            projections{
                count()
             property('topic')
                'topic'{

                }
            }
        }
    }*/
}