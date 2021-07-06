#When a Backer instance is initialized, it should be initialized with a name.

class Backer
    attr_reader :name
    attr_accessor :backed_projects
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

end



#The ProjectBacker class is maintaining the relationship. It should have an @@all class variable. When an instance is initialized, it should be stored in this variable.

#The ProjectBacker class should also have a class method .all that returns the @@all class variable.

#Once both classes have their attributes and readers set up, write an instance method on the Backer class called back_project that takes in a Project instance. This method should create a ProjectBacker instance using the provided Project instance and the current Backer instance (the instance this method was called on).

#Similarly, write a method on the Project class called add_backer that takes in a Backer instance and creates a ProjectBacker using the Backer instance and the current Project instance.

#With back_project set up, the final step for the Backer class is to build an instance method that returns all the projects associated with this Backer instance. Since Project instances are not directly associated with Backer instances, you will need to get this information _through the ProjectBacker class.

#For the Project class, write a similar method, backers, that returns all backers associated with this Project instance.