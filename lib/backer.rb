
class Backer
    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        my_links = ProjectBacker.all.select { |pb| pb.backer == self }
        my_links.map { |link| link.project }
    end
end