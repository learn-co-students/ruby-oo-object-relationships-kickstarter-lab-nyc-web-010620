class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
       my_links = ProjectBacker.all.select { |pb| pb.project == self }
       my_links.map { |link| link.backer } 
    end
end