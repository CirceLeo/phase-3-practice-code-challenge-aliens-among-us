class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations

    def visit earthling
        Visitation.create(alien_id: self.id, earthling_id: earthling.id, date: DateTime.now)
    end

    def total_light_years_traveled
        distance = self.light_years_to_home_planet * 2
        #count visitations 
    end

    def self.most_frequent_visitor
        #visitations
    end

    def self.average_light_years_to_home_planet
        #Alien.all.sum()
    end

    def count_visitations
        
    end



end
