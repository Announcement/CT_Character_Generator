#### Character.rb
class Character
  def initialize()
    @gender = ''
    @career = ''

    @skills = Hash.new
    @stats = Hash.new
    @stats = {
      'Str' => nil,
      'Dex' => nil,
      'End' => nil,
      'Int' => nil,
      'Edu' => nil,
      'Soc' => nil
      }

    @upp = ''
    @stat_names = %w(Str Dex End Int Edu Soc)
    @stat_mods = Hash.new
    @stat_names.each do |stat|
      @stat_mods[stat] = nil
    end
  end

  def set_gender(g)
    @gender = g
  end

  def get_gender
    return @gender
  end

  def set_career(c)
    @career = c
  end

  def get_career
    return @career
  end

  def set_stat(stat, num)
    @stats[stat] = num
  end

  def get_stat(stat)
    return @stats[stat]
  end

  def set_terms(terms)
    @terms = terms
  end

  def get_terms
    return @terms
  end

  def set_age
    @age = (@terms * 4) + 18
  end

  def get_age
    return @age
  end

  def set_upp

    @stat_names.each do |stat|
      @upp = @upp + @stats[stat]
    end    
  end

  def get_upp
    return @upp
  end

end

