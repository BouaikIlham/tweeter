class User < ApplicationRecord
    has_person_name
    has_many :tweets
end
