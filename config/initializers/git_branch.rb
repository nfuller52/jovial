class GitBranch
  include Singleton

  attr_reader :name

  def initialize
    @name = `git rev-parse --abbrev-ref HEAD`.strip
  end
end
