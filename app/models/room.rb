class Room < ApplicationRecord
  valicates_uniqueness_of :name
  scope :public_rooms, -> { where(is_private: false) }
end
