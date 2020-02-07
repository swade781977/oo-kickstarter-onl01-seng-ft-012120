class Backer
  @all = []
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  attr_reader :name, :backed_projects

  def back_project(project)
    @backed_projects << project
    Project.project.backers << self
  end
end