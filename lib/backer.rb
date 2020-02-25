require 'pry'
class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        # binding.pry
        if !project.backers.find do |backer| self end
            project.add_backer(self)
        end
    end

end