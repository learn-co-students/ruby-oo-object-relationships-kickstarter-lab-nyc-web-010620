#When a ProjectBacker instance is initialized, it should be initialized with a Project instance and a Backer instance.
class ProjectBacker
    attr_reader :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
        project.backers << backer
        backer.backed_projects << project
    end

    def self.all
        @@all
    end
end