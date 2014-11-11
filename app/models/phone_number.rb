class PhoneNumber < ActiveRecord::Base
  has_many :phone_number_contacts
  has_many :contacts, through: :phone_number_contacts

  validates :number_type, :number, presence: true
  validates :number, format: { with: /(1)?(?:-)?(?:\(|-)?([\d]{3})(?:\.|\-|\))([\d]{3})(?:\.|\-)([\d]{4})(?: ?x([\d]{3,5}))?/,
    message: "please enter a valid phone number, ex. 555-555-5555" }
end
