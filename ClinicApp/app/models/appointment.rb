class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :customer

  validates :customer, presence: true
  validates  :doctor, presence: true
  validates :pet, presence: true
  validates :reason , presence: true

  validate :validate_appointment_date

  def validate_appointment_date
    if self.visit_date.past?
      errors.add(:visit_date, 'should not be in past')
    end
  end
end
