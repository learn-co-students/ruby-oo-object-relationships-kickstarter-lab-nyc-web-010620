class Backer
   attr_accessor :name 
   @@all =[]

   def initialize(name)
      @name = name 

      @@all << self 
   end 

   def self.all
      @@all 
   end 

   def back_project(project)
      ProjectBacker.new(project, self)
   end 

   # returns an array of projects associated with this Backer instance
   # first, iterate over the array of all ProjectBackers and select only the ones where the backer matches the backer we are looking for
   # then, map over that array (of ProjectBackers) and get an array of projects 
   def backed_projects
      ProjectBacker.all.select{|project_backer| project_backer.backer == self}.map{|project_backer| project_backer.project}
   end 

end 