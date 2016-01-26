class Profile < ActiveRecord::Base
  belongs_to :doctor ,foreign_key: 'user_id'
  validates :address, length: {maximum: 35 }, presence: true
  validates :zip, length: {maximum: 5 }
  validates_exclusion_of :yop, in: 0..100
end
