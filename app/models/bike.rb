class Bike < ActiveRecord::Base
    belongs_to :user

    def get_user_name 
       self.user.name
    end


end 