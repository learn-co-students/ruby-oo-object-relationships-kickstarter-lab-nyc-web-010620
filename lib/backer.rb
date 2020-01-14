class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backers = ProjectBacker.all.select { |project_backer| project_backer.backer == self }
        projects_backers.map { |project| project.project  }
    end
end