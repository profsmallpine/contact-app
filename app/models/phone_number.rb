class PhoneNumber < ActiveRecord::Base
  has_many :phone_number_contacts
  has_many :contacts, through: :phone_number_contacts

  validate :type, :number, presence: true
end
