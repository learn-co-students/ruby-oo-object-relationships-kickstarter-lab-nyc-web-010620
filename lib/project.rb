#When a Project instance is initialized, it should be initialized with a title.
class Project
    attr_reader :title
    attr_accessor :backers
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
end