$LOAD_PATH << File.expand_path("../lib", __FILE__)

require 'character'

class Imperial_Marine < Character

  attr_accessor :rank, :career

  def initialize()
    super
    @career = 'Marine'
  end

  
end

