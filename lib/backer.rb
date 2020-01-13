class Backer

  attr_reader :name


  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects_backed = []
    ProjectBacker.all.each do |project|
      if project.backer == self
        projects_backed << project.project
      end
    end
    projects_backed
  end



end
