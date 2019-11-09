class Project

  attr_accessor :name, :user, :pledge_goal_amount

  @@all = []
  
  def initialize(name, user, pledge_goal_amount)
    @name = name
    @user = user
    @pledge_goal_amount = pledge_goal_amount
    @@all << self
  end

  def self.all
    @@all
  end

  # returns all projects which have no pledges yet
  def self.no_pledges
    projects_with_pledges = Pledge.all.map do |pledge|
      if pledge.amount
        pledge.project
      end
    end.uniq
    Project.all - projects_with_pledges
  end

  # returns all projects which have met or exceeded their pledge goal
  def self.above_goal
    pledge_result_hash = {}
    Pledge.all.map do |pledge|
      if pledge_result_hash[pledge.project.name]
        pledge_result_hash[pledge.project.name] += pledge.amount
      else
        pledge_result_hash[pledge.project.name] = pledge.amount
      end
    end
    project_goal_hash = {}
    Project.all.map do |project|
      project_goal_hash[project.name] = project.pledge_goal_amount
    end
    successful_projects = []
    project_goal_hash.map do |k, v|
      if pledge_result_hash[k] && pledge_result_hash[k] > v
        successful_projects << k
      end
    end
    successful_projects
  end

  # returns the project with the highest number of backers
  def self.most_backers
    pledge_number_of_backers_hash = {}
		Pledge.all.map do |pledge|
			if pledge_number_of_backers_hash[pledge.project.name]
				pledge_number_of_backers_hash[pledge.project.name] += 1
			else
				pledge_number_of_backers_hash[pledge.project.name] = 1
			end
		end
		pledge_number_of_backers_hash.key(pledge_number_of_backers_hash.values.max)
  end

end