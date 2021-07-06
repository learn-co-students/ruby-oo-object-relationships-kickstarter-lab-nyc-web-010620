class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers_projects = []
    ProjectBacker.all.each do |backer|
      if backer.project == self
        backers_projects << backer.backer
      end
    end
    backers_projects
  end




end
