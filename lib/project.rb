require_relative './backer.rb'
require_relative './project_backer.rb'
require 'pry'

class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.select do |pb|
            pb.project == self
        end .map do |x|
            x.backer
        end
    end


end