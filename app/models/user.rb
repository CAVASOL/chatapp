class User < ApplicationRecord
  valicates_uniqueness_of :username
  scope :all_except, ->(user) { where.not(id: user) }
end
