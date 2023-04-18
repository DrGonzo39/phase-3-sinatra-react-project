class Bike < ActiveRecord::Base
    belongs_to :user

    def get_user_name 
       self.user.name
    end

    def get_user_rating
        self.user.rating
    end

    def self.by_lowest_price
        self.all.order(price: :asc)
    end

end 