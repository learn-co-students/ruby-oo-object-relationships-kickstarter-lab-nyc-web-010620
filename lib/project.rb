class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       projects_backers =  ProjectBacker.all.select { |project_backer| project_backer.project == self }
       projects_backers.map { |project_backer| project_backer.backer }
    end
end