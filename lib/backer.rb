require "pry"

class Backer 

attr_reader :name
    
    def initialize(name)
        @name = name  
    end 

    def back_project(project)
        ProjectBacker.new(project,self)
    end 

    def backed_projects
       project_array = []
        ProjectBacker.all.each do |project|
            if project.backer == self  
                project_array.push(project.project)
            end 
        end 
        project_array
    end 

end 