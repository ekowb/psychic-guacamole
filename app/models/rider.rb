class Rider < ApplicationRecord
    has_many :roll_rides
    has_many :rollercoasters, through: :roll_rides
end