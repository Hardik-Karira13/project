package linkshare

import grails.gorm.services.Service

class UsersService{

     def method2(obj)
    {
         return obj.properties
    }
    def method3(){
        List<Resources> resources1=Resources.createCriteria().list{
            projections{
                property('resourceTopic.id')
                'resourceTopic'{
                    property('id')
                    property('name')
                    eq('visibility',enums.Visibility.Public)
                    'createdBy'{
                        property('id')
                        property('userName')
                    }
                }
                property('description')
                property('lastUpdated')
            }
        }
        return resources1
    }
        static def topPosts() {
            return ResourceRate.createCriteria().list(max: 5) {
                projections {
                    property('resources.id')
                    'resources' {
                        property('description')
                        property('url')
                        property('filePath')
                        'resourceTopic' {
                            property('id')
                            property('name')
                            eq('visibility', enums.Visibility.PUBLIC)
                        }
                        'resourceUser' {
                            property('id')
                            property('userName')
                            property('firstName')
                            property('lastName')
                            property('photo')
                        }
                        property('lastUpdated')
                    }
                }
                groupProperty('resources.id')
                count('id', 'score')
                order('score', 'desc')
            }
        }
}