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

   # returns an array of backers associated with this Project instance
   # first, iterate over the array of all ProjectBackers and select only those ProjectBackers where the project is the project we are looking for 
   # then, map over that array and return an array of backers for those select ProjectBackers 
   def backers
      ProjectBacker.all.select{|project_backer| project_backer.project == self}.map{|project_backer| project_backer.backer}
   end 

end 