class Doctor < User
  has_one :profile , foreign_key: 'user_id'
  has_many :appointments
  has_many :customers , through: :appointments

  validates :name, length: {maximum: 35 }, presence: true
end
