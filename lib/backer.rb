require_relative './project_backer.rb'
require_relative './project.rb'
require 'pry'

class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select do |pjb|
            pjb.backer == self
        end .map do |x|
            x.project
        end
    end

end