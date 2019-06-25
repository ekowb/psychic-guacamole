class Rollercoaster < ApplicationRecord
  belongs_to :park
  has_many :roll_rides
  has_many :riders, through: :roll_rides
  validates :name, :height, :location, :length, presence: true
end
