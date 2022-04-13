class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations

    def visit earthling
        Visitation.create(alien_id: self.id, earthling_id: earthling.id, date: DateTime.now)
    end

    def total_light_years_traveled
        distance = self.light_years_to_home_planet * 2
        num_visits = Visitation.where(alien_id: self.id).length
        distance * num_visits
    end

    def self.most_frequent_visitor
        #Visitation.order('COUNT(*) DESC').select('alien_id')
        most_frequent_id = 1
        most_visits = 0
        Alien.all.each do |alien|
            num_visits = Visitation.where(alien_id: alien.id).length
            if num_visits > most_visits 
                most_visits = num_visits
                most_frequent_id = alien.id
            end
        end
        Alien.find(most_frequent_id)
    end

    def self.average_light_years_to_home_planet
        #total_ly = Alien.all.sum{|alien| alien.light_years_to_home_planet}
        total_ly = Alien.sum(:light_years_to_home_planet)
        total_ly / Alien.count
    end


end
