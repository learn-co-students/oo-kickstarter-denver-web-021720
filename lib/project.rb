 class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        if !backer.backed_projects.find do |project| self end
            backer.back_project(self)
        end
    end

 end