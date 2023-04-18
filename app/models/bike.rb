class Bike < ActiveRecord::Base
    belongs_to :user

    def get_user_name 
       self.user.name
    end

    def get_user_rating
        self.user.rating
    end

    def self.lowest_price
        Bike.all.sort_by do |bike|
            bike[:price]
        end
    end

end 