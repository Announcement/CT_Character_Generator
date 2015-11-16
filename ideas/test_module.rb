#!/usr/bin/env ruby
#!/usr/bin/env ruby

module Marine
    def self.show_rank
        puts "I am a Marine!"
    end
end

module Pirate
    def self.show_rank
        puts "Arrgghhh!!"
    end
end

class Character
    include Marine
    include Pirate

    def set_career(career)
        puts career.instance_methods
        @career = career
        career.show_rank
    end
end

Fred = Character.new
Fred.set_career(Marine)
