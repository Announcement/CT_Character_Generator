module Traveller

  def Traveller.roll_dice(dice_type, dice_number, average_of = 1)
    @total = 0.0 
    dice_number.times do
      @average_total = 0
      average_of.times do
        @average_total += rand(dice_type) + 1
      end
      @total += (@average_total / average_of).round 
    end
    return @total.to_i
  end

  def Traveller.roll_upp
    @upp = ''
    6.times do
      @stat = Traveller.roll_dice(6,2,1)
      @stat = @stat.to_s(16).upcase
      @upp  = @upp + @stat
    end
    return @upp
  end
    
  def Traveller.noble?(gender, upp)
    nobility = Hash.new
    nobility['B'] = { 'f' => 'Dame',      'm' => 'Knight' }
    nobility['C'] = { 'f' => 'Baroness',  'm' => 'Baron' }
    nobility['D'] = { 'f' => 'Marquesa',  'm' => 'Marquis' }
    nobility['E'] = { 'f' => 'Countess',  'm' => 'Count' }
    nobility['F'] = { 'f' => 'Duchess',   'm' => 'Duke' }
 
    title = '' 
    soc = upp[5,1].upcase 
    if nobility.has_key?(soc)
      if gender.downcase == 'female'
        title = nobility[soc]['f']
      else
        title = nobility[soc]['m']
      end 
    end
    return title
  end 

# This is a direct cut and paste from trav_functions. 
# Really needs to be fixed.
  def Traveller.out_txt(c)
    rank = c.rank
    name = c.name
    upp = c.upp
    gender = c.gender
    age = c.age
    terms = c.terms
    llp = c.llp
    
    puts "#{career} #{rank} #{name} #{upp} Gender #{gender.capitalize} Age #{age}  #{terms} terms"
    first_skill = true
    c.skills.each do |skill, level|
      if first_skill == false
        print ", "
      end 
      print "#{skill}-#{level}"
      first_skill = false
    end
    print "\n"
    puts llp
    puts""
  end

  def Traveller.write(c, mode)
    rank = c.rank
    name = c.name
    upp = c.upp
    gender = c.gender
    age = c.age
    terms = c.terms
    llp = c.llp
    career = c.career
   
    if mode == 'txt' 
      puts "#{career} #{rank} #{name} #{upp} Gender #{gender.capitalize} Age #{age}  #{terms} terms"
      first_skill = true
      c.skills.each do |skill, level|
        if first_skill == false
          print ", "
        end 
        print "#{skill}-#{level}"
        first_skill = false
      end
      print "\n"
      puts llp
      puts""
    elsif mode == 'hash'
      id = Hash.new
      id['name'] = name
      id['rank'] = rank
      id['upp'] = upp
      id['gender'] = gender
      id['age'] = age
      id['terms'] = terms
      id['llp'] = llp
      id['career'] = career
      id['skills'] = c.skills
      return id
    elsif mode == 'wiki'
      puts "#{career} #{rank} #{name} #{upp} Gender #{gender.capitalize} Age #{age}  #{terms} terms"
      puts 
      c.skills.each do |skill, level|
        if first_skill == false
          print ", "
        end 
        print "#{skill}-#{level}"
        first_skill = false
      end
      puts
      puts
      puts llp
      puts
    elsif mode == 'html'
      puts "<p>#{career} #{rank} #{name} #{upp} Gender #{gender.capitalize} Age #{age}  #{terms} terms"
      print "<p>" 
      c.skills.each do |skill, level|
        if first_skill == false
          print ", "
        end 
        print "#{skill}-#{level}"
        first_skill = false
      end
      puts 
      puts "<p>#{llp}"
      puts "<br>"
    end

end

end
