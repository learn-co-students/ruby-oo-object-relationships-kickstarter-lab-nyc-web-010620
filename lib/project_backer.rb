require_relative './backer.rb'
require_relative './project.rb'
require 'pry'

class ProjectBacker
    attr_reader :backer, :project
    @@all = []
    def initialize(project,backer)
        @backer = backer
        @project = project
        @@all << self
    end

    def self.all 
        @@all
    end

end