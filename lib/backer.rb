class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backed = ProjectBacker.all.select { |project| project.backer == self }
        projects_backed.map { |backed_project| backed_project.project }
    end
end