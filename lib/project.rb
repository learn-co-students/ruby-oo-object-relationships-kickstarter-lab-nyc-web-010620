class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed_projects = ProjectBacker.all.select { |my_project| my_project.project == self}
        backed_projects.map { |projects_backed| projects_backed.backer }
    end
end